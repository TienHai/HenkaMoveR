package fr.henka.henka_mover.interfaces;


import fr.henka.henka_mover.models.DestinationsResponse;
import fr.henka.henka_mover.models.SchedulesStationResponse;
import fr.henka.henka_mover.models.TrafficResponse;
import fr.henka.henka_mover.models.TrafficLineResult;
import io.reactivex.Observable;
import retrofit2.http.GET;
import retrofit2.http.Path;


public interface RatpService {

    /**
     * Horaire des prochaine train sur la RERA a la gare de noisiel en direction de paris
     * https://api-ratp.pierre-grimaud.fr/v3/schedules/rers/a/noisiel/A
     *
     * Horaire des prochaine train sur la RERA a la gare de noisiel en direction de chessy
     * https://api-ratp.pierre-grimaud.fr/v3/schedules/rers/a/noisiel/R
     *
     * Requête pour récupérer tout le trafic du réseau RATP
     * https://api-ratp.pierre-grimaud.fr/v3/traffic
     *
     *
     * Code Mission Rer A
     * ------------------
     *
     * Un code mission commençant par la lettre :
     *  - Q indique un terminus Marne-la-Vallée Chessy
     *  - T indique un terminus Poissy
     *  - Y indique un terminus Rueil
     *  - D indique un terminus Noisy-le-grand
     *  - R indique un terminus La Varenne-Chennevières
     *  - N indique un terminus Boissy-Sain-Léger
     *  - B indique un terminus La défense
     *
     */

    @GET("traffic")
    Observable<TrafficResponse> getRatpTraffic();

    @GET("traffic/{type}/{code}")
    Observable<TrafficLineResult> getRatpTrafficLine(@Path("type") String type, @Path("code") String code);

    @GET("destinations/{type}/{code}")
    Observable<DestinationsResponse> getRatpLineDestinations(@Path("type") String type, @Path("code") String code);

    @GET("schedules/{type}/{code}/{station}/{way}")
    Observable<SchedulesStationResponse> getRatpSchedules(
            @Path("type") String type,
            @Path("code") String code,
            @Path("station") String station,
            @Path("way") String way);
}
