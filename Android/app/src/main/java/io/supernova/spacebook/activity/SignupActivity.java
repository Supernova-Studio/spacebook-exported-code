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
import android.widget.Switch;
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


public class SignupActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, SignupActivity.class);
    }
    
    private ConstraintLayout signupConstraintLayout;
    private TextView signUpTextView;
    private Switch switchSwitch;
    private Button signUpButton;
    private Button logInButton;
    private Toolbar toolbar;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.signup_activity);
        this.init();
    }
    private void init() {
    
        // Configure Signup component
        signupConstraintLayout = this.findViewById(R.id.signup_constraint_layout);
        signupConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
        
        // Configure Sign up component
        signUpTextView = this.findViewById(R.id.sign_up_text_view);
        SpannableString signUpTextViewText = new SpannableString(this.getString(R.string.signup_activity_sign_up_text_view_text));
        signUpTextView.setText(signUpTextViewText);
        
        // Configure switch component
        switchSwitch = this.findViewById(R.id.switch_switch);
        switchSwitch.setOnClickListener((view) -> {
    this.onSwitchValueChanged();
});
        
        // Configure Sign Up component
        signUpButton = this.findViewById(R.id.sign_up_button);
        signUpButton.setOnClickListener((view) -> {
    this.onSignUpPressed();
});
        
        // Configure Log In! component
        logInButton = this.findViewById(R.id.log_in_button);
        logInButton.setOnClickListener((view) -> {
    this.onLogInPressed();
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
    public void onSwitchValueChanged() {
    
    }
    public void onSignUpPressed() {
    
        startTwoActivity();
    }
    public void onLogInPressed() {
    
        startLoginActivity();
    }
    private void startTwoActivity() {
    
        this.startActivity(TwoActivity.newIntent(this));
    }
    private void startLoginActivity() {
    
        this.startActivity(LoginActivity.newIntent(this));
    }
}




