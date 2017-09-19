package fr.henka.henka_mover.fragments;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;

import java.util.List;

import fr.henka.henka_mover.R;
import fr.henka.henka_mover.interfaces.RatpService;
import fr.henka.henka_mover.models.TrafficResponse;
import fr.henka.henka_mover.models.TrafficDetailsLine;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.schedulers.Schedulers;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;


public class TrafficInfoFragment extends Fragment implements SwipeRefreshLayout.OnRefreshListener  {

    private static final String ARG_SECTION_NUMBER = "section_number";
    private String BASE_URL = "https://api-ratp.pierre-grimaud.fr/v3/";
    private CompositeDisposable mCompositeDisposable;
    private RatpService requestInterface;
    private View rootView;
    private SwipeRefreshLayout swipeRefreshLayout;
    private WebView wvInfo;

    /**
     *
     */
    public TrafficInfoFragment() {
        // To prevents the memory leak, initialise a CompositeDisposable object
        mCompositeDisposable = new CompositeDisposable();

        // Initialise Retrofit on RatpService Interface
        requestInterface = new Retrofit.Builder()
                .baseUrl(BASE_URL)
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create())
                .build().create(RatpService.class);
    }

    /**
     * Returns a new instance of this fragment for the given section
     * number.
     */
    public static TrafficInfoFragment newInstance(int sectionNumber) {
        TrafficInfoFragment fragment = new TrafficInfoFragment();
        Bundle args = new Bundle();
        args.putInt(ARG_SECTION_NUMBER, sectionNumber);
        fragment.setArguments(args);
        return fragment;
    }

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        rootView = inflater.inflate(R.layout.fragment_traffic_info, container, false);
        wvInfo = rootView.findViewById(R.id.wv_info);
        swipeRefreshLayout = rootView.findViewById(R.id.swipe_refresh_layout);
        swipeRefreshLayout.setOnRefreshListener(this);

        //WebView.setWebContentsDebuggingEnabled(true);

		return rootView;
	}

    @Override
    public void onDestroy() {
        super.onDestroy();
        mCompositeDisposable.clear();
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && isResumed())
        {
            //Only manually call onResume if fragment is already visible
            //Otherwise allow natural fragment lifecycle to call onResume
            //setUserVisibleHint being called before onCreateView and that setUserVisibleHint doesn't get called if app goes background and then foreground
            onResume();
        }
    }

    @Override
    public void onResume()
    {
        super.onResume();
        if (!getUserVisibleHint()) {
            return;
        }

        // showing refresh animation before making http call
        swipeRefreshLayout.setRefreshing(true);

        // The network operation
        mCompositeDisposable.add(requestInterface.getRatpTraffic()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribe(this::handleResponse, this::handleError));
    }

    @Override
    public void onRefresh() {
        onResume();
    }

    /**
     *
     * @param response
     */
    private void handleResponse(TrafficResponse response) {
        String header = "<html><head><meta charset='utf-8'/>"
                + "<link rel='stylesheet' href='Css/metrodna.css' type='text/css'/>"
                + "</head><body>";

        StringBuilder content = new StringBuilder();
        content.append(header);

        content.append("<div style='text-align: right; font-size: 0.8em;'>");
        content.append("Dernière mise à jour : ");
        content.append(response.getMeta().getDate());
        content.append("</div>");

        String metroInfo = constructLineInfo(response.getResult().getMetros(), "metro");
        if (!metroInfo.isEmpty()) {
            content.append("<div class='lineInfo'>");
            content.append("<h1><span class='metro symbole'></span> Métros</h1>");
            content.append(metroInfo);
            content.append("</div>");
        }

        String rerInfo = constructLineInfo(response.getResult().getRers(), "rer");
        if (!rerInfo.isEmpty()) {
            content.append("<div class='lineInfo'>");
            content.append("<h1><span class='rer symbole'></span> RER</h1>");
            content.append(rerInfo);
            content.append("</div>");
        }

        String tramInfo = constructLineInfo(response.getResult().getTramways(), "tram");
        if (!tramInfo.isEmpty()) {
            content.append("<div class='lineInfo'>");
            content.append("<h1><span class='tram symbole'></span> Tramways</h1>");
            content.append(tramInfo);
            content.append("</div>");
        }
        content.append("</body></html>");

        //
        wvInfo.loadDataWithBaseURL("file:///android_asset/", content.toString(), "text/html", "UTF-8", null);

        //
        mCompositeDisposable.clear();

        // Stopping swipe refresh
        swipeRefreshLayout.setRefreshing(false);
    }

    /**
     *
     * @param error
     */
    private void handleError(Throwable error) {
        Log.e("TrafficInfoFragment", "ERROR: "+ error.toString());
        mCompositeDisposable.clear();

        // stopping swipe refresh
        swipeRefreshLayout.setRefreshing(false);
    }

    /**
     *
     * @param type
     * @param name
     * @return
     */
    private String constructLineInfo(List<TrafficDetailsLine> type, String name) {
        String textInfo = "";
        for (TrafficDetailsLine lineInfo : type) {
            if (!lineInfo.getSlug().equals("normal")) {
                String info = "<h3><span class='"+ name +" ligne";
                if (name.equals("rer")) {
                    info += lineInfo.getLine().toUpperCase() + "'></span> ";
                } else {
                    info += lineInfo.getLine().toLowerCase() + "'></span> ";
                }
                info += lineInfo.getTitle() + "</h3>";
                info += "<p class='info'>"+ lineInfo.getMessage() + "</p>";
                textInfo += info;
            }
        }

        return textInfo;
    }
}
