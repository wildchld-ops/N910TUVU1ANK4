.class public Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;
.super Landroid/app/Activity;
.source "SafetyCareDisasterDisclaimerActivity.java"


# instance fields
.field agreeTermsAndConditionsCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field agreeToShareLocationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field agreeToTurnOnMobileDataCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    return-void
.end method

.method private prepareFinishActivity()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_disaster_user_agree"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f091a50

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setTitle(I)V

    const v2, 0x7f040213

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_care_disaster_user_agree"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0522

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$1;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0523

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$2;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0b0520

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f0b051f

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f0b0521

    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$5;-><init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->prepareFinishActivity()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
