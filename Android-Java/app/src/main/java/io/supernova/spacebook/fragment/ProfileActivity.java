/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.fragment;

import android.view.ViewGroup;
import io.supernova.spacebook.R;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import io.supernova.spacebook.activity.*;
import java.util.*;
import android.support.constraint.ConstraintLayout;
import android.view.View;
import android.view.LayoutInflater;
import android.text.Spannable;
import android.support.v7.widget.GridLayoutManager;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.text.style.RelativeSizeSpan;
import android.widget.ImageView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import io.supernova.spacebook.adapter.ProfileActivityPhotosRecyclerViewAdapter;
import android.widget.TextView;


public class ProfileActivity extends Fragment {
    public static ProfileActivity newInstance() {
    
        ProfileActivity fragment = new ProfileActivity();
        Bundle arguments = new Bundle();
        fragment.setArguments(arguments);
        return fragment;
    }
    
    private TextView drWhatTextView;
    private TextView travelerDreamerTextView;
    private TextView latestPhotosTextView;
    private RecyclerView photosRecyclerView;
    protected ProfileActivity() {
        super();
        setHasOptionsMenu(true);
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    
        return inflater.inflate(R.layout.profile_activity, container, false);
    }
    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
    
        inflater.inflate(R.menu.profile_activity_menu, menu);
    }
    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
    
        super.onViewCreated(view, savedInstanceState);
        init();
    }
    public void init() {
    
        // Configure Dr. What component
        drWhatTextView = getView().findViewById(R.id.dr_what_text_view);
        SpannableString drWhatTextViewText = new SpannableString(getContext().getString(R.string.profile_activity_dr_what_text_view_text));
        drWhatTextView.setText(drWhatTextViewText);
        
        // Configure Traveler, dreamer component
        travelerDreamerTextView = getView().findViewById(R.id.traveler_dreamer_text_view);
        SpannableString travelerDreamerTextViewText = new SpannableString(getContext().getString(R.string.profile_activity_traveler_dreamer_text_view_text));
        travelerDreamerTextView.setText(travelerDreamerTextViewText);
        
        // Configure Latest Photos component
        latestPhotosTextView = getView().findViewById(R.id.latest_photos_text_view);
        SpannableString latestPhotosTextViewText = new SpannableString(getContext().getString(R.string.profile_activity_latest_photos_text_view_text));
        latestPhotosTextView.setText(latestPhotosTextViewText);
        
        // Configure Photos component
        photosRecyclerView = getView().findViewById(R.id.photos_recycler_view);
        photosRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
        photosRecyclerView.setAdapter(new ProfileActivityPhotosRecyclerViewAdapter());
    }
}




