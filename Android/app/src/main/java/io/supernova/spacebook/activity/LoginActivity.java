/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.graphics.PointF;
import android.widget.Button;
import android.support.constraint.ConstraintLayout;
import android.text.Spannable;
import android.view.View;
import android.widget.EditText;
import android.view.MenuItem;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.content.Intent;
import android.text.style.RelativeSizeSpan;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.os.Bundle;
import android.content.Context;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.graphics.Color;
import android.widget.TextView;


public class LoginActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, LoginActivity.class);
    }
    
    private ConstraintLayout loginConstraintLayout;
    private TextView logInTextView;
    private Button loginButton;
    private Button forgotYourPasswordButton;
    private Toolbar toolbar;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.login_activity);
        this.init();
    }
    private void init() {
    
        // Configure Login component
        loginConstraintLayout = this.findViewById(R.id.login_constraint_layout);
        loginConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
        
        // Configure Log in component
        logInTextView = this.findViewById(R.id.log_in_text_view);
        SpannableString logInTextViewText = new SpannableString(this.getString(R.string.login_activity_log_in_text_view_text));
        logInTextView.setText(logInTextViewText);
        
        // Configure Login component
        loginButton = this.findViewById(R.id.login_button);
        loginButton.setOnClickListener((view) -> {
    this.onLoginPressed();
});
        
        // Configure Forgot your password component
        forgotYourPasswordButton = this.findViewById(R.id.forgot_your_password_button);
        forgotYourPasswordButton.setOnClickListener((view) -> {
    this.onForgotYourPasswordPressed();
});
        
        // Configure Navigation Bar #1 component
        toolbar = this.findViewById(R.id.toolbar);
        
        setupToolbar();
    }
    public void setupToolbar() {
    
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        
        // Additional Toolbar setup code can go here.
    }
    public void onLoginPressed() {
    
        startTwoActivity();
    }
    public void onForgotYourPasswordPressed() {
    
    }
    private void startTwoActivity() {
    
        this.startActivity(TwoActivity.newIntent(this));
    }
}




