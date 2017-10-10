package fr.henka.henka_mover;

import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.webkit.WebView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import fr.henka.henka_mover.interfaces.RatpService;
import fr.henka.henka_mover.models.Destination;
import fr.henka.henka_mover.models.DestinationsResponse;
import fr.henka.henka_mover.models.ScheduleMission;
import fr.henka.henka_mover.models.SchedulesStationResponse;
import fr.henka.henka_mover.models.TrafficDetailsLine;
import fr.henka.henka_mover.models.TrafficLineResult;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.schedulers.Schedulers;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;


public class StationDetailActivity extends AppCompatActivity implements SwipeRefreshLayout.OnRefreshListener {

    private String BASE_URL = "https://api-ratp.pierre-grimaud.fr/v3/";
    private CompositeDisposable mCompositeDisposable;
    private RatpService requestInterface;
    private SwipeRefreshLayout swipeRefreshLayout;
    private WebView wvInfo;
    private String type, code, station;

    private String header = "<html><head><meta charset='utf-8'/>"
            + "<meta name='viewport' content='width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui'>"
            + "<link rel='stylesheet' href='Css/metrodna.css' type='text/css'/>"
            + "<link rel='stylesheet' href='Css/styles.css' type='text/css'/>"
            + "</head><body>";
    private String footer = "</body></html>";
    private List<List> destinations;
    private HashMap ways;
    private String traffic;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_station_detail);

        // Access to widget defined in layout XML
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh_layout);
        wvInfo = (WebView) findViewById(R.id.wv_info);

        destinations = new ArrayList<>();
        ways = new HashMap<String, List>();


        //
        setSupportActionBar(toolbar);

        //
        swipeRefreshLayout.setOnRefreshListener(this);

        // To prevents the memory leak, initialise a CompositeDisposable object
        mCompositeDisposable = new CompositeDisposable();

        // Initialise Retrofit on RatpService Interface
        requestInterface = new Retrofit.Builder()
                .baseUrl(BASE_URL)
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create())
                .build().create(RatpService.class);

        // Unpack data from Intent
        type = this.getIntent().getExtras().getString("type");
        code = this.getIntent().getExtras().getString("code");
        station = this.getIntent().getExtras().getString("station");

        // Enable the "Up" button for more navigation options
        if (null != getSupportActionBar()) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(station);
            int resourceId = getResources().getIdentifier(
                    "logo_"+type+"_"+code,
                    "drawable", getPackageName());
            getSupportActionBar().setIcon(resourceId);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mCompositeDisposable.clear();
    }

    @Override
    public void onResume()
    {
        super.onResume();

        destinations.clear();
        ways.clear();
        traffic = "";

        // showing refresh animation before making http call
        swipeRefreshLayout.setRefreshing(true);

        // The network operation
        mCompositeDisposable.add(requestInterface.getRatpLineDestinations(type, code)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribe(this::handleDestinationsResponse, this::handleError));
        mCompositeDisposable.add(requestInterface.getRatpTrafficLine(type, code)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribe(this::handleTrafficResponse, this::handleError));
    }

    @Override
    public void onRefresh() {
        onResume();
    }

    /**
     *
     * @param response
     */
    private void handleTrafficResponse(TrafficLineResult response) {
        StringBuilder content = new StringBuilder();
        String res = constructLineInfo(response.getResult());
        content.append("<div class='lineInfo'>");
        content.append("<h3 class='title'><span class='");
        if (type.equals("rers")) {
            content.append("rer ligne");
            content.append(code.toUpperCase());
        } else if (type.equals("metros")) {
            content.append("metro ligne");
            content.append(code.toLowerCase());
        } else {
            content.append("tram ligne");
            content.append(code.toLowerCase());
        }
        content.append("'></span>");
        content.append(" Info traffic</h3>");
        content.append(res);
        content.append("</div>");

        traffic = content.toString();

        //
        makeHtml(response.getMeta().getDate());
    }

    /**
     *
     * @param response
     */
    private void handleDestinationsResponse(DestinationsResponse response) {
        for (Destination destination : response.getResult().getDestinations()) {
            //
            List res = new ArrayList<>();
            if (code.equals("a") && type.equals("rers")) {
                if (destination.getWay().equals("A")) {
                    res.add("R");
                } else {
                    res.add("A");
                }
            } else {
                res.add(destination.getWay());
            }
            res.add(destination.getName());
            destinations.add(res);

            //
            mCompositeDisposable.add(requestInterface.getRatpSchedules(type, code, station, destination.getWay())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribeOn(Schedulers.io())
                    .subscribe(this::handleResponse, this::handleError));
        }
    }

    /**
     *
     * @param response
     */
    private void handleResponse(SchedulesStationResponse response) {
        List<String> schedules = new ArrayList<>();
        for (ScheduleMission missionInfo : response.getResult().getSchedules()) {
            StringBuilder schedule = new StringBuilder();
            schedule.append("<li><b>");
            schedule.append(missionInfo.getMessage());
            schedule.append("</b> : ");
            if (missionInfo.getCode() != null) {
                schedule.append("(");
                schedule.append(missionInfo.getCode());
                schedule.append(") ");
            }
            schedule.append(missionInfo.getDestination());
            schedule.append("</li>");
            schedules.add(schedule.toString());
        }

        //
        String call = response.getMeta().getCall();
        String way = call.substring(call.length() - 1);
        ways.put(way, schedules);

        //
        makeHtml(response.getMeta().getDate());

        // Stopping swipe refresh
        swipeRefreshLayout.setRefreshing(false);
    }

    /**
     *
     * @param error
     */
    private void handleError(Throwable error) {
        Log.e("FavoriteListFragment", "ERROR: "+ error.toString());
        mCompositeDisposable.clear();

        // stopping swipe refresh
        swipeRefreshLayout.setRefreshing(false);
    }

    /**
     *
     * @return
     */
    private String constructLineInfo(TrafficDetailsLine lineInfo) {
        String textInfo = "";
        String info = "<div class='info'>";
        info += "<span class='slug'>"+ lineInfo.getTitle() +"</span> : ";
        info += "<span class='message'>"+ lineInfo.getMessage() +"</span></div>";
        textInfo += info;

        return textInfo;
    }

    private void makeHtml(String date) {
        //
        StringBuilder content = new StringBuilder();
        content.append(header);

        //
        content.append("<div style='text-align: right; font-size: 0.8em;'>");
        content.append("Dernière mise à jour : ");
        content.append(date);
        content.append("</div>");

        for (List destination: destinations) {
            if (ways.get(destination.get(0)) == null)
                continue;;

            content.append("<div class='destination'>");
            content.append("<h3 class='title'>");
            content.append(destination.get(1));
            content.append("</h3>");

            content.append("<ul class='schedule'>");
            for (Object schedule : (List) ways.get(destination.get(0))) {
                content.append(schedule);
            }
            content.append("</ul></div>");
        }

        content.append(traffic);

        //
        content.append(footer);

        wvInfo.loadDataWithBaseURL("file:///android_asset/", content.toString(), "text/html", "UTF-8", null);
    }
}
