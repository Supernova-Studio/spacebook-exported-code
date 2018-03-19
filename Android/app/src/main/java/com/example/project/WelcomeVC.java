package com.example.project;
import android.support.v7.app.AppCompatActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.example.project.R;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.support.constraint.ConstraintLayout;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import java.util.ArrayList;
import java.util.List;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.support.v4.view.animation.PathInterpolatorCompat;
/**
 *  Created by [Author].
 */
public class WelcomeVC extends AppCompatActivity {

	private ConstraintLayout welcome;
	private TextView spacebookLabel;
	private TextView conquerTheStarsLabel;
	private ImageView logoIV;
	private View logIn;
	private View signUp;
	private TextView supernovaStuLabel;
	public static Intent newIntent(Context context) {
		return new Intent(context, WelcomeVC.class);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.welcome_vc);
		this.init();
	}

	public void init() {
		welcome = this.findViewById(R.id.welcome);
		spacebookLabel = this.findViewById(R.id.spacebook_label);
		conquerTheStarsLabel = this.findViewById(R.id.conquer_the_stars_label);
		logoIV = this.findViewById(R.id.logo_iv);
		logIn = this.findViewById(R.id.log_in);
		signUp = this.findViewById(R.id.sign_up);
		supernovaStuLabel = this.findViewById(R.id.supernova_stu_label);
		logIn.setOnClickListener(view -> {
			onLogInPressed();
		});
		signUp.setOnClickListener(view -> {
			onSignUpPressed();
		});
		startAnimationGroupOne();
	}

	public void onLogInPressed() {
		this.startAnimationGroupThree();
		this.startLoginVC();
	}

	public void onSignUpPressed() {
		this.startAnimationGroupTwo();
		this.startSignupVC();
	}

	public void startLoginVC() {
		this.startActivity(LoginVC.newIntent(this));
	}

	public void startSignupVC() {
		this.startActivity(SignupVC.newIntent(this));
	}

	public void startAnimationGroupOne() {
		startGroup1Animation1();
	}

	public void startGroup1Animation1() {
		Keyframe kf1 = Keyframe.ofFloat(0.0f, -45f);
		Keyframe kf2 = Keyframe.ofFloat(0.8f, -45f);
		Keyframe kf3 = Keyframe.ofFloat(1.0f, 0f);

		PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.ROTATION, kf1, kf2, kf3);

		Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(findViewById(R.id.logo_iv), pvh1);
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.1f, 0.631640625f, 0.58f, 1.0f));

		Animator animator2 = AnimatorInflater.loadAnimator(this, R.animator.animation_group_one_animation_element_one);
		AnimatorSet animatorSet = new AnimatorSet();
		animatorSet.playTogether(animator1, animator2);
		animatorSet.setTarget(findViewById(R.id.logo_iv));
		animatorSet.start();
	}

	public void startAnimationGroupTwo() {
		startGroup2Animation1();
	}

	public void startGroup2Animation1() {
		Keyframe kf1 = Keyframe.ofFloat(0.0f, 0.3f);
		Keyframe kf2 = Keyframe.ofFloat(0.2f, 1.1f);
		Keyframe kf3 = Keyframe.ofFloat(0.4f, 0.9f);
		Keyframe kf4 = Keyframe.ofFloat(0.6f, 1.03f);
		Keyframe kf5 = Keyframe.ofFloat(0.8f, 0.97f);
		Keyframe kf6 = Keyframe.ofFloat(1.0f, 1f);

		PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.SCALE_X, kf1, kf2, kf3, kf4, kf5, kf6);
		PropertyValuesHolder pvh2 = PropertyValuesHolder.ofKeyframe(View.SCALE_Y, kf1, kf2, kf3, kf4, kf5, kf6);

		Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(findViewById(R.id.sign_up), pvh1, pvh2);
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f));

		Keyframe kf7 = Keyframe.ofFloat(0.0f, 0f);
		Keyframe kf8 = Keyframe.ofFloat(0.6f, 1f);
		Keyframe kf9 = Keyframe.ofFloat(1.0f, 1f);

		PropertyValuesHolder pvh3 = PropertyValuesHolder.ofKeyframe(View.ALPHA, kf7, kf8, kf9);

		Animator animator2 = ObjectAnimator.ofPropertyValuesHolder(findViewById(R.id.sign_up), pvh3);
		animator2.setDuration(1000);
		animator2.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f));

		AnimatorSet animatorSet = new AnimatorSet();
		animatorSet.playTogether(animator1, animator2);
		animatorSet.setTarget(findViewById(R.id.sign_up));
		animatorSet.start();
	}

	public void startAnimationGroupThree() {
		startGroup3Animation1();
	}

	public void startGroup3Animation1() {
		Keyframe kf1 = Keyframe.ofFloat(0.0f, 0.3f);
		Keyframe kf2 = Keyframe.ofFloat(0.2f, 1.1f);
		Keyframe kf3 = Keyframe.ofFloat(0.4f, 0.9f);
		Keyframe kf4 = Keyframe.ofFloat(0.6f, 1.03f);
		Keyframe kf5 = Keyframe.ofFloat(0.8f, 0.97f);
		Keyframe kf6 = Keyframe.ofFloat(1.0f, 1f);

		PropertyValuesHolder pvh1 = PropertyValuesHolder.ofKeyframe(View.SCALE_X, kf1, kf2, kf3, kf4, kf5, kf6);
		PropertyValuesHolder pvh2 = PropertyValuesHolder.ofKeyframe(View.SCALE_Y, kf1, kf2, kf3, kf4, kf5, kf6);

		Animator animator1 = ObjectAnimator.ofPropertyValuesHolder(findViewById(R.id.log_in), pvh1, pvh2);
		animator1.setDuration(1000);
		animator1.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f));

		Keyframe kf7 = Keyframe.ofFloat(0.0f, 0f);
		Keyframe kf8 = Keyframe.ofFloat(0.6f, 1f);
		Keyframe kf9 = Keyframe.ofFloat(1.0f, 1f);

		PropertyValuesHolder pvh3 = PropertyValuesHolder.ofKeyframe(View.ALPHA, kf7, kf8, kf9);

		Animator animator2 = ObjectAnimator.ofPropertyValuesHolder(findViewById(R.id.log_in), pvh3);
		animator2.setDuration(1000);
		animator2.setInterpolator(PathInterpolatorCompat.create(0.215f, 0.61f, 0.355f, 1.0f));

		AnimatorSet animatorSet = new AnimatorSet();
		animatorSet.playTogether(animator1, animator2);
		animatorSet.setTarget(findViewById(R.id.log_in));
		animatorSet.start();
	}


}
