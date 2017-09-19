package fr.henka.henka_mover.fragments;


import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;


import java.util.ArrayList;
import java.util.List;

import fr.henka.henka_mover.R;
import fr.henka.henka_mover.StationDetailActivity;
import fr.henka.henka_mover.adapters.FavoritesAdapter;
import fr.henka.henka_mover.adapters.RecyclerTouchListener;
import fr.henka.henka_mover.interfaces.ClickListener;
import fr.henka.henka_mover.models.Favorite;


public class FavoriteListFragment extends Fragment implements SwipeRefreshLayout.OnRefreshListener {

    private SwipeRefreshLayout swipeRefreshLayout;
    private View rootView;
    private List<Favorite> favoriteList = new ArrayList<>();
    private RecyclerView recyclerView;
    private FavoritesAdapter mAdapter;

    /**
     *
     */
    public FavoriteListFragment() {
    }

    /**
     * Returns a new instance of this fragment for the given section
     * number.
     */
    public static FavoriteListFragment newInstance(int sectionNumber) {
        FavoriteListFragment fragment = new FavoriteListFragment();
        Bundle args = new Bundle();
        fragment.setArguments(args);
        return fragment;
    }

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        rootView = inflater.inflate(R.layout.fragment_favorite_list, container, false);
        swipeRefreshLayout = rootView.findViewById(R.id.swipe_refresh_layout);
        swipeRefreshLayout.setOnRefreshListener(this);

        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getActivity());
        recyclerView = rootView.findViewById(R.id.recycler_view);
        recyclerView.addItemDecoration(new DividerItemDecoration(getActivity(), DividerItemDecoration.VERTICAL));
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);

        // set the adapter
        mAdapter = new FavoritesAdapter(getActivity(), favoriteList);
        recyclerView.setAdapter(mAdapter);

        // set click event listener
        recyclerView.addOnItemTouchListener(new RecyclerTouchListener(getActivity().getApplicationContext(), recyclerView, new ClickListener() {
            @Override
            public void onClick(View view, int position) {
                Favorite favorite = favoriteList.get(position);

                // Create an Intent for pass data to DetailActivity
                Intent detailIntent = new Intent(getActivity(), StationDetailActivity.class);
                detailIntent.putExtra("type", favorite.getType());
                detailIntent.putExtra("code", favorite.getCode());
                detailIntent.putExtra("station", favorite.getStation());

                // Start DetailActivity using Intent
                startActivity(detailIntent);
            }

            @Override
            public void onLongClick(View view, int position) {

            }

        }));

        // set favorite list
        favoriteList.clear();
        prepareFavoriteData();

        return rootView;
	}

    @Override
    public void onDestroy() {
        super.onDestroy();
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

        mAdapter.notifyDataSetChanged();

        // Stopping swipe refresh
        swipeRefreshLayout.setRefreshing(false);
    }

    @Override
    public void onRefresh() {
        onResume();
    }

    private void prepareFavoriteData() {
        Favorite favorite = new Favorite("rers", "a", "noisiel");
        favoriteList.add(favorite);

        favorite = new Favorite("rers", "a", "auber");
        favoriteList.add(favorite);

        favorite = new Favorite("metros", "8", "opera");
        favoriteList.add(favorite);

        favorite = new Favorite("metros", "8", "balard");
        favoriteList.add(favorite);

        mAdapter.notifyDataSetChanged();
    }
}
