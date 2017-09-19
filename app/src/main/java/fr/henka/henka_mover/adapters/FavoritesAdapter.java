package fr.henka.henka_mover.adapters;

import android.app.Activity;
import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

import fr.henka.henka_mover.R;
import fr.henka.henka_mover.interfaces.RatpService;
import fr.henka.henka_mover.models.Favorite;
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


public class FavoritesAdapter extends RecyclerView.Adapter<FavoritesAdapter.MyViewHolder> {

    private List<Favorite> favoritesList;
    private Activity activity;
    private String BASE_URL = "https://api-ratp.pierre-grimaud.fr/v3/";
    private CompositeDisposable mCompositeDisposable;
    private RatpService requestInterface;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public TextView station, wayA, wayR;
        public ImageView type, slug;
        public String maj;

        public MyViewHolder(View view) {
            super(view);
            type = view.findViewById(R.id.img_type);
            slug = view.findViewById(R.id.img_slug);
            station = view.findViewById(R.id.station);
            wayA = view.findViewById(R.id.way_A);
            wayR = view.findViewById(R.id.way_R);
            maj = "";
        }

        public void info(Favorite favorite) {
            // The network operation
            mCompositeDisposable.add(requestInterface.getRatpSchedules(favorite.getType(), favorite.getCode(), favorite.getStation(), "A")
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribeOn(Schedulers.io())
                    .subscribe(this::handleResponse, this::handleError));
            mCompositeDisposable.add(requestInterface.getRatpSchedules(favorite.getType(), favorite.getCode(), favorite.getStation(), "R")
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribeOn(Schedulers.io())
                    .subscribe(this::handleResponse, this::handleError));
            mCompositeDisposable.add(requestInterface.getRatpTrafficLine(favorite.getType(), favorite.getCode())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribeOn(Schedulers.io())
                    .subscribe(this::handleResponseTraffic, this::handleError));
        }

        private void handleResponse(SchedulesStationResponse response) {
            ScheduleMission missionInfo = response.getResult().getSchedules().get(0);
            maj = response.getMeta().getDate();
            TextView txtMaj = activity.findViewById(R.id.txt_maj);
            txtMaj.setText("Dernière mise a jour : " + maj);

            String call = response.getMeta().getCall();
            String way = call.substring(call.length() - 1);
            StringBuilder next = new StringBuilder();
            next.append( "<b>" +missionInfo.getMessage() + "</b> : ");
            if (missionInfo.getCode() != null) {
                next.append("(" + missionInfo.getCode() + ") ");
            }
            next.append(missionInfo.getDestination());
            if (way.equals("A")) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    wayA.setText(Html.fromHtml(next.toString(), Html.FROM_HTML_MODE_LEGACY));
                } else {
                    wayA.setText(Html.fromHtml(next.toString()));
                }
            } else {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    wayR.setText(Html.fromHtml(next.toString(), Html.FROM_HTML_MODE_LEGACY));
                } else {
                    wayR.setText(Html.fromHtml(next.toString()));
                }
            }
        }

        private void handleResponseTraffic(TrafficLineResult response) {
            TrafficDetailsLine info = response.getResult();
            if (!info.getSlug().equals("normal")) {
                slug.setBackgroundResource(R.drawable.face_angry);
            }
        }

        /**
         *
         * @param error
         */
        private void handleError(Throwable error) {
            Log.e("RatpSchedules", "ERROR: "+ error.toString());
            clear();
        }

        public void clear() {
            mCompositeDisposable.clear();
        }
    }

    public FavoritesAdapter(Activity activity, List<Favorite> favoritesList) {
        this.favoritesList = favoritesList;
        this.activity = activity;

        // To prevents the memory leak, initialise a CompositeDisposable object
        mCompositeDisposable = new CompositeDisposable();

        // Initialise Retrofit on RatpService Interface
        requestInterface = new Retrofit.Builder()
                .baseUrl(BASE_URL)
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create())
                .build().create(RatpService.class);
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.favorite_list_row, parent, false);

        return new MyViewHolder(itemView);
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        Favorite favorite = favoritesList.get(position);
        holder.station.setText(favorite.getStation());

        int resourceId = this.activity.getResources().getIdentifier(
                "logo_"+favorite.getType()+"_"+favorite.getCode(),
                "drawable", this.activity.getPackageName());
        holder.type.setImageResource(resourceId);
        holder.info(favorite);
    }


    @Override
    public int getItemCount() {
        return favoritesList.size();
    }
}