// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Start Journey `
  String get firstPageOnboardingTitle {
    return Intl.message(
      'Start Journey ',
      name: 'firstPageOnboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `With Nike`
  String get firstPageOnboardingTitle1 {
    return Intl.message(
      'With Nike',
      name: 'firstPageOnboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Smart, Gorgeous & Fashionable Collection`
  String get firstPageOnboardingSubtitle {
    return Intl.message(
      'Smart, Gorgeous & Fashionable Collection',
      name: 'firstPageOnboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Follow Latest`
  String get secondPageOnboardingTitle {
    return Intl.message(
      'Follow Latest',
      name: 'secondPageOnboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Style Shoes`
  String get secondPageOnboardingTitle1 {
    return Intl.message(
      'Style Shoes',
      name: 'secondPageOnboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `There Are Many Beautiful And Attractive products To Your Room`
  String get secondPageOnboardingSubtitle {
    return Intl.message(
      'There Are Many Beautiful And Attractive products To Your Room',
      name: 'secondPageOnboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Summer Shoes`
  String get thirdPageOnboardingTitle {
    return Intl.message(
      'Summer Shoes',
      name: 'thirdPageOnboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nike 2025`
  String get thirdPageOnboardingTitle1 {
    return Intl.message(
      'Nike 2025',
      name: 'thirdPageOnboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Experience comfort and style with Nike's latest summer designs`
  String get thirdPageOnboardingSubtitle {
    return Intl.message(
      'Experience comfort and style with Nike\'s latest summer designs',
      name: 'thirdPageOnboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get textButtonGetStarted {
    return Intl.message(
      'Get Started',
      name: 'textButtonGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get textButtonNext {
    return Intl.message('Next', name: 'textButtonNext', desc: '', args: []);
  }

  /// `Hello Again!`
  String get signInTitle {
    return Intl.message(
      'Hello Again!',
      name: 'signInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back You,ve Been Missed!`
  String get signInSubtitle {
    return Intl.message(
      'Welcome Back You,ve Been Missed!',
      name: 'signInSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get signInEmail {
    return Intl.message(
      'Email Address',
      name: 'signInEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signInPassword {
    return Intl.message('Password', name: 'signInPassword', desc: '', args: []);
  }

  /// `Recovery Password`
  String get signInRecoveryPassword {
    return Intl.message(
      'Recovery Password',
      name: 'signInRecoveryPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInButton {
    return Intl.message('Sign In', name: 'signInButton', desc: '', args: []);
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get signInWithFacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'signInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signInWithApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get signInNoAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'signInNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up for free`
  String get signInSignUpFree {
    return Intl.message(
      'Sign Up for free',
      name: 'signInSignUpFree',
      desc: '',
      args: [],
    );
  }

  /// `Minimum of 8 characters`
  String get signInValidator1 {
    return Intl.message(
      'Minimum of 8 characters',
      name: 'signInValidator1',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase, lowercase, Symbol, letters and one number`
  String get signInValidator2 {
    return Intl.message(
      'Uppercase, lowercase, Symbol, letters and one number',
      name: 'signInValidator2',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the required field`
  String get signInValidatorEmpty {
    return Intl.message(
      'Please enter the required field',
      name: 'signInValidatorEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an valid email`
  String get signInValidatorValidEmail {
    return Intl.message(
      'Please enter an valid email',
      name: 'signInValidatorValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get signUpTitle {
    return Intl.message(
      'Create Account',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Let's create account together`
  String get signUpSubtitle {
    return Intl.message(
      'Let\'s create account together',
      name: 'signUpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get signUpFullName {
    return Intl.message(
      'Full Name',
      name: 'signUpFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get signUpEmail {
    return Intl.message(
      'Email Address',
      name: 'signUpEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get signUpPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'signUpPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signUpPassword {
    return Intl.message('Password', name: 'signUpPassword', desc: '', args: []);
  }

  /// `Confirm Password`
  String get signUpConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'signUpConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUpButton {
    return Intl.message('Sign Up', name: 'signUpButton', desc: '', args: []);
  }

  /// `Sign up with Google`
  String get signUpWithGoogle {
    return Intl.message(
      'Sign up with Google',
      name: 'signUpWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Facebook`
  String get signUpWithFacebook {
    return Intl.message(
      'Sign up with Facebook',
      name: 'signUpWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Apple`
  String get signUpWithApple {
    return Intl.message(
      'Sign up with Apple',
      name: 'signUpWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signUpHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'signUpHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign In now`
  String get signUpSignInNow {
    return Intl.message(
      'Sign In now',
      name: 'signUpSignInNow',
      desc: '',
      args: [],
    );
  }

  /// `I agree to Sou Okaz's`
  String get termsAndCondition1 {
    return Intl.message(
      'I agree to Sou Okaz\'s',
      name: 'termsAndCondition1',
      desc: '',
      args: [],
    );
  }

  /// ` Privacy Policy`
  String get termsAndCondition2 {
    return Intl.message(
      ' Privacy Policy',
      name: 'termsAndCondition2',
      desc: '',
      args: [],
    );
  }

  /// ` And`
  String get termsAndCondition3 {
    return Intl.message(' And', name: 'termsAndCondition3', desc: '', args: []);
  }

  /// ` Terms Of Use.`
  String get termsAndCondition4 {
    return Intl.message(
      ' Terms Of Use.',
      name: 'termsAndCondition4',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get snackbarTitleSuccess {
    return Intl.message(
      'Congratulations',
      name: 'snackbarTitleSuccess',
      desc: '',
      args: [],
    );
  }

  /// `You have signed up successfully`
  String get snackbarDescriptionSuccess {
    return Intl.message(
      'You have signed up successfully',
      name: 'snackbarDescriptionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get snackbarTitleFailure {
    return Intl.message(
      'Something went wrong',
      name: 'snackbarTitleFailure',
      desc: '',
      args: [],
    );
  }

  /// `Please check your details and try again`
  String get snackbarDescriptionFailure {
    return Intl.message(
      'Please check your details and try again',
      name: 'snackbarDescriptionFailure',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the Terms And Conditions`
  String get snackbarDescriptionFailureTerms {
    return Intl.message(
      'Please accept the Terms And Conditions',
      name: 'snackbarDescriptionFailureTerms',
      desc: '',
      args: [],
    );
  }

  /// `Attention`
  String get snackbarTitleWarning {
    return Intl.message(
      'Attention',
      name: 'snackbarTitleWarning',
      desc: '',
      args: [],
    );
  }

  /// `Some information might be missing or incomplete`
  String get snackbarDescriptionWarning {
    return Intl.message(
      'Some information might be missing or incomplete',
      name: 'snackbarDescriptionWarning',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get snackbarTitleInfo {
    return Intl.message(
      'Information',
      name: 'snackbarTitleInfo',
      desc: '',
      args: [],
    );
  }

  /// `This is a helpful tip for you`
  String get snackbarDescriptionInfo {
    return Intl.message(
      'This is a helpful tip for you',
      name: 'snackbarDescriptionInfo',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Recovery Password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Phone Number`
  String get forgotPasswordSubtitle {
    return Intl.message(
      'Please Enter Your Phone Number',
      name: 'forgotPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `To Receive a Verification Code`
  String get forgotPasswordSubtitle1 {
    return Intl.message(
      'To Receive a Verification Code',
      name: 'forgotPasswordSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get forgotPasswordPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'forgotPasswordPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get forgotPasswordContinue {
    return Intl.message(
      'Continue',
      name: 'forgotPasswordContinue',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get forgotPasswordVerificationTitle {
    return Intl.message(
      'Enter verification code',
      name: 'forgotPasswordVerificationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we sent to the following phone number 01002275616`
  String get forgotPasswordVerificationSubtitle {
    return Intl.message(
      'Enter the code we sent to the following phone number 01002275616',
      name: 'forgotPasswordVerificationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get forgotPasswordVerificationButton {
    return Intl.message(
      'Verify Code',
      name: 'forgotPasswordVerificationButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get forgotPasswordResendCode {
    return Intl.message(
      'Resend Code',
      name: 'forgotPasswordResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get hello {
    return Intl.message('Resend Code', name: 'hello', desc: '', args: []);
  }

  /// `New Password`
  String get newPasswordTitle {
    return Intl.message(
      'New Password',
      name: 'newPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please Create new password to sign in`
  String get newPasswordSubtitle {
    return Intl.message(
      'Please Create new password to sign in',
      name: 'newPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPasswordField {
    return Intl.message(
      'New Password',
      name: 'newPasswordField',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get newPasswordConfirmField {
    return Intl.message(
      'Confirm New Password',
      name: 'newPasswordConfirmField',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get newPasswordButton {
    return Intl.message(
      'Create new password',
      name: 'newPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Password has been changed successfully`
  String get homePasswordChanged {
    return Intl.message(
      'Password has been changed successfully',
      name: 'homePasswordChanged',
      desc: '',
      args: [],
    );
  }

  /// `Store location`
  String get homeStoreLocation {
    return Intl.message(
      'Store location',
      name: 'homeStoreLocation',
      desc: '',
      args: [],
    );
  }

  /// `Mondolibug, Sylhet`
  String get homeStoreAddress {
    return Intl.message(
      'Mondolibug, Sylhet',
      name: 'homeStoreAddress',
      desc: '',
      args: [],
    );
  }

  /// `Looking for shoes`
  String get homeSearchPlaceholder {
    return Intl.message(
      'Looking for shoes',
      name: 'homeSearchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Nike`
  String get homeBrandNike {
    return Intl.message('Nike', name: 'homeBrandNike', desc: '', args: []);
  }

  /// `Puma`
  String get homeBrandPuma {
    return Intl.message('Puma', name: 'homeBrandPuma', desc: '', args: []);
  }

  /// `Under Armour`
  String get homeBrandUnderArmour {
    return Intl.message(
      'Under Armour',
      name: 'homeBrandUnderArmour',
      desc: '',
      args: [],
    );
  }

  /// `Adidas`
  String get homeBrandAdidas {
    return Intl.message('Adidas', name: 'homeBrandAdidas', desc: '', args: []);
  }

  /// `Converse`
  String get homeBrandConverse {
    return Intl.message(
      'Converse',
      name: 'homeBrandConverse',
      desc: '',
      args: [],
    );
  }

  /// `Popular Shoes`
  String get homePopularShoes {
    return Intl.message(
      'Popular Shoes',
      name: 'homePopularShoes',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get homeBestSeller {
    return Intl.message(
      'Best Seller',
      name: 'homeBestSeller',
      desc: '',
      args: [],
    );
  }

  /// `Nike Jordan`
  String get homeNikeJordan {
    return Intl.message(
      'Nike Jordan',
      name: 'homeNikeJordan',
      desc: '',
      args: [],
    );
  }

  /// `Nike Air Max`
  String get homeNikeAirMax {
    return Intl.message(
      'Nike Air Max',
      name: 'homeNikeAirMax',
      desc: '',
      args: [],
    );
  }

  /// `$493.00`
  String get homePrice493 {
    return Intl.message('\$493.00', name: 'homePrice493', desc: '', args: []);
  }

  /// `Nike Air Jordan`
  String get homeNikeAirJordan {
    return Intl.message(
      'Nike Air Jordan',
      name: 'homeNikeAirJordan',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestSellerTitle {
    return Intl.message(
      'Best Seller',
      name: 'bestSellerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Men's Shoes`
  String get bestSellerCategory {
    return Intl.message(
      'Men\'s Shoes',
      name: 'bestSellerCategory',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favouriteTitle {
    return Intl.message(
      'Favourite',
      name: 'favouriteTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search Your Shoes`
  String get searchTitle {
    return Intl.message(
      'Search Your Shoes',
      name: 'searchTitle',
      desc: '',
      args: [],
    );
  }

  /// `No Results`
  String get searchNoResults {
    return Intl.message(
      'No Results',
      name: 'searchNoResults',
      desc: '',
      args: [],
    );
  }

  /// `Sorry… this information is not available at the moment`
  String get searchSorryMessage {
    return Intl.message(
      'Sorry… this information is not available at the moment',
      name: 'searchSorryMessage',
      desc: '',
      args: [],
    );
  }

  /// `Shoes`
  String get searchShoes {
    return Intl.message('Shoes', name: 'searchShoes', desc: '', args: []);
  }

  /// `Cancel`
  String get searchCancel {
    return Intl.message('Cancel', name: 'searchCancel', desc: '', args: []);
  }

  /// `Today`
  String get notificationsToday {
    return Intl.message(
      'Today',
      name: 'notificationsToday',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get notificationsYesterday {
    return Intl.message(
      'Yesterday',
      name: 'notificationsYesterday',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notificationsTitle {
    return Intl.message(
      'Notifications',
      name: 'notificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get notificationsClearAll {
    return Intl.message(
      'Clear All',
      name: 'notificationsClearAll',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filtersTitle {
    return Intl.message('Filters', name: 'filtersTitle', desc: '', args: []);
  }

  /// `Gender`
  String get filtersGender {
    return Intl.message('Gender', name: 'filtersGender', desc: '', args: []);
  }

  /// `Men`
  String get filtersMen {
    return Intl.message('Men', name: 'filtersMen', desc: '', args: []);
  }

  /// `Women`
  String get filtersWomen {
    return Intl.message('Women', name: 'filtersWomen', desc: '', args: []);
  }

  /// `Unisex`
  String get filtersUnisex {
    return Intl.message('Unisex', name: 'filtersUnisex', desc: '', args: []);
  }

  /// `Size`
  String get filtersSize {
    return Intl.message('Size', name: 'filtersSize', desc: '', args: []);
  }

  /// `Price`
  String get filtersPrice {
    return Intl.message('Price', name: 'filtersPrice', desc: '', args: []);
  }

  /// `$16`
  String get filtersPrice16 {
    return Intl.message('\$16', name: 'filtersPrice16', desc: '', args: []);
  }

  /// `$350`
  String get filtersPrice350 {
    return Intl.message('\$350', name: 'filtersPrice350', desc: '', args: []);
  }

  /// `Apply`
  String get filtersApply {
    return Intl.message('Apply', name: 'filtersApply', desc: '', args: []);
  }

  /// `Men's Shoes`
  String get detailsCategory {
    return Intl.message(
      'Men\'s Shoes',
      name: 'detailsCategory',
      desc: '',
      args: [],
    );
  }

  /// `Nike Air Jordan`
  String get detailsTitle {
    return Intl.message(
      'Nike Air Jordan',
      name: 'detailsTitle',
      desc: '',
      args: [],
    );
  }

  /// `$967.800`
  String get detailsPrice {
    return Intl.message('\$967.800', name: 'detailsPrice', desc: '', args: []);
  }

  /// `Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....`
  String get detailsDescription {
    return Intl.message(
      'Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',
      name: 'detailsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get detailsGallery {
    return Intl.message('Gallery', name: 'detailsGallery', desc: '', args: []);
  }

  /// `Add To Cart`
  String get detailsAddToCart {
    return Intl.message(
      'Add To Cart',
      name: 'detailsAddToCart',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get cartSubtotal {
    return Intl.message('Subtotal', name: 'cartSubtotal', desc: '', args: []);
  }

  /// `Shopping`
  String get cartShopping {
    return Intl.message('Shopping', name: 'cartShopping', desc: '', args: []);
  }

  /// `Total Cost`
  String get cartTotalCost {
    return Intl.message(
      'Total Cost',
      name: 'cartTotalCost',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get cartCheckout {
    return Intl.message('Checkout', name: 'cartCheckout', desc: '', args: []);
  }

  /// `Contact Information`
  String get checkoutContactInfo {
    return Intl.message(
      'Contact Information',
      name: 'checkoutContactInfo',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get checkoutEmail {
    return Intl.message('Email', name: 'checkoutEmail', desc: '', args: []);
  }

  /// `Phone`
  String get checkoutPhone {
    return Intl.message('Phone', name: 'checkoutPhone', desc: '', args: []);
  }

  /// `Address`
  String get checkoutAddress {
    return Intl.message('Address', name: 'checkoutAddress', desc: '', args: []);
  }

  /// `Newahall St 36, London, 12908 - UK`
  String get checkoutSampleAddress {
    return Intl.message(
      'Newahall St 36, London, 12908 - UK',
      name: 'checkoutSampleAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get checkoutPayment {
    return Intl.message('Payment', name: 'checkoutPayment', desc: '', args: []);
  }

  /// `Back To Shopping`
  String get checkoutBackToShopping {
    return Intl.message(
      'Back To Shopping',
      name: 'checkoutBackToShopping',
      desc: '',
      args: [],
    );
  }

  /// `Your Payment Is Successful`
  String get checkoutSuccess {
    return Intl.message(
      'Your Payment Is Successful',
      name: 'checkoutSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Hey, 👋`
  String get drawerGreeting {
    return Intl.message('Hey, 👋', name: 'drawerGreeting', desc: '', args: []);
  }

  /// `alisson becker`
  String get drawerUserName {
    return Intl.message(
      'alisson becker',
      name: 'drawerUserName',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get drawerProfile {
    return Intl.message('Profile', name: 'drawerProfile', desc: '', args: []);
  }

  /// `Home Page`
  String get drawerHomePage {
    return Intl.message(
      'Home Page',
      name: 'drawerHomePage',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get drawerMyCart {
    return Intl.message('My Cart', name: 'drawerMyCart', desc: '', args: []);
  }

  /// `Favorite`
  String get drawerFavorite {
    return Intl.message('Favorite', name: 'drawerFavorite', desc: '', args: []);
  }

  /// `Orders`
  String get drawerOrders {
    return Intl.message('Orders', name: 'drawerOrders', desc: '', args: []);
  }

  /// `Notifications`
  String get drawerNotifications {
    return Intl.message(
      'Notifications',
      name: 'drawerNotifications',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get drawerAbout {
    return Intl.message('About', name: 'drawerAbout', desc: '', args: []);
  }

  /// `Sign Out`
  String get drawerSignOut {
    return Intl.message('Sign Out', name: 'drawerSignOut', desc: '', args: []);
  }

  /// `Account & Settings`
  String get drawerAccountSettings {
    return Intl.message(
      'Account & Settings',
      name: 'drawerAccountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get drawerAccount {
    return Intl.message('Account', name: 'drawerAccount', desc: '', args: []);
  }

  /// `Notification Setting`
  String get drawerNotificationSetting {
    return Intl.message(
      'Notification Setting',
      name: 'drawerNotificationSetting',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get drawerShippingAddress {
    return Intl.message(
      'Shipping Address',
      name: 'drawerShippingAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment Info`
  String get drawerPaymentInfo {
    return Intl.message(
      'Payment Info',
      name: 'drawerPaymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get drawerDeleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'drawerDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `App Settings`
  String get drawerAppSettings {
    return Intl.message(
      'App Settings',
      name: 'drawerAppSettings',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get drawerLanguages {
    return Intl.message(
      'Languages',
      name: 'drawerLanguages',
      desc: '',
      args: [],
    );
  }

  /// `Enable Push Notifications`
  String get drawerEnablePushNotifications {
    return Intl.message(
      'Enable Push Notifications',
      name: 'drawerEnablePushNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Enable Location Services`
  String get drawerEnableLocationServices {
    return Intl.message(
      'Enable Location Services',
      name: 'drawerEnableLocationServices',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get drawerDarkMode {
    return Intl.message(
      'Dark Mode',
      name: 'drawerDarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get drawerFullName {
    return Intl.message(
      'Full Name',
      name: 'drawerFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get drawerEmailAddress {
    return Intl.message(
      'Email Address',
      name: 'drawerEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get drawerLocation {
    return Intl.message('Location', name: 'drawerLocation', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
