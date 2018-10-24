/**
 *  Created by Supernova.
 */

package io.supernova.spacebook.activity;

import io.supernova.spacebook.R;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.graphics.PointF;
import android.widget.TextView;
import android.widget.Button;
import android.support.constraint.ConstraintLayout;
import android.animation.AnimatorSet;
import android.view.View;
import android.text.Spannable;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.animation.PropertyValuesHolder;
import android.text.style.RelativeSizeSpan;
import android.animation.Animator;
import android.content.Intent;
import android.animation.ObjectAnimator;
import android.animation.AnimatorInflater;
import android.widget.ImageView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.content.Context;
import android.animation.Keyframe;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.graphics.Color;


public class WelcomeActivity extends AppCompatActivity {
    public static Intent newIntent(Context context) {
    
        // Fill the created intent with the data you want to be passed to this Activity when it's opened.
        return new Intent(context, WelcomeActivity.class);
    }
    
    private ConstraintLayout welcomeConstraintLayout;
    private ImageView logoImageView;
    private TextView spacebookTextView;
    private Button signUpButton;
    private Button logInButton;
    @Override
    public void onCreate(Bundle savedInstanceState) {
    
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.welcome_activity);
        this.init();
        
        startAnimationOne();
    }
    private void init() {
    
        // Configure Welcome component
        welcomeConstraintLayout = this.findViewById(R.id.welcome_constraint_layout);
        welcomeConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 97)).addStop(1f, Color.argb(255, 139, 27, 139)).build());
        
        // Configure logo component
        logoImageView = this.findViewById(R.id.logo_image_view);
        
        // Configure Spacebook component
        spacebookTextView = this.findViewById(R.id.spacebook_text_view);
        SpannableString spacebookTextViewText = new SpannableString(this.getString(R.string.welcome_activity_spacebook_text_view_text));
        spacebookTextView.setText(spacebookTextViewText);
        
        // Configure Sign Up component
        signUpButton = this.findViewById(R.id.sign_up_button);
        signUpButton.setOnClickListener((view) -> {
    this.onSignUpPressed();
});
        
        // Configure Log In component
        logInButton = this.findViewById(R.id.log_in_button);
        logInButton.setOnClickListener((view) -> {
    this.onLogInPressed();
});
    }
    public void onSignUpPressed() {
    
        startSignupActivity();
    }
    public void onLogInPressed() {
    
        startLoginActivity();
    }
    private void startLoginActivity() {
    
        this.startActivity(LoginActivity.newIntent(this));
    }
    private void startSignupActivity() {
    
        this.startActivity(SignupActivity.newIntent(this));
    }
    public void startAnimationOne() {
    
        Keyframe kf1 = Keyframe.ofFloat(0.0f, -45f);
        Keyframe kf2 = Keyframe.ofFloat(0.7f, -45f);
        Keyframe kf3 = Keyframe.ofFloat(1.0f, 1f);
        
        PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3);
        
        Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(logoImageView, pvh1);
        animator1.setDuration(1000);
        animator1.setInterpolator(PathInterpolatorCompat.create(0.42f, 0f, 0.58f, 1f));
        
        Animator animator2 = AnimatorInflater.loadAnimator(this, R.animator.animation_group_one_element_one);
        AnimatorSet set1 = new AnimatorSet();
        set1.playTogether(animator1, animator2);
        set1.setTarget(logoImageView);
        AnimatorSet set2 = new AnimatorSet();
        set2.playTogether(set1);
        set2.start();
    }
}




