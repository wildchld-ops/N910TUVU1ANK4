.class public Lcom/android/keyguard/sec/KeyguardHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "KeyguardHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DEBUG:Z


# instance fields
.field private final FIRST_OVERLAY:I

.field private final LIMIT_COUNT:I

.field private final SCREEN_UPDATE:I

.field private dm:Landroid/util/DisplayMetrics;

.field private isHelpOverlayUSA:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mEntireLayout:Landroid/widget/RelativeLayout;

.field private mHelpButton1:Landroid/widget/Button;

.field private mHelpButton2:Landroid/widget/Button;

.field private mHelpCheckBox1:Landroid/widget/CheckBox;

.field private mHelpCheckBox2:Landroid/widget/CheckBox;

.field private mOverlayLayout1:Landroid/widget/RelativeLayout;

.field private mOverlayLayout2:Landroid/widget/RelativeLayout;

.field private mPopupLayout1:Landroid/widget/LinearLayout;

.field private mPopupLayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->SCREEN_UPDATE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->FIRST_OVERLAY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->LIMIT_COUNT:I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setDefaultCheckValue()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isHelpOverlayUSA:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method


# virtual methods
.method public checkOverlayCondition()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    if-gt v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isLargePhone()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isHelpOverlayVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLargePhone()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setHelpLayoutFlag()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
        0x7f0b0090 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    const-string v0, "KeyguardHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->DEBUG:Z

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isHelpOverlayUSA:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setDefaultCheckValue()V

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mEntireLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->showHelpTip()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setHelpLayoutFlag()V
    .locals 5

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "displayed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_overlay_checked"

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->checkOverlayCondition()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showHelpTip()V
    .locals 8

    const/high16 v7, -0x67000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "KeyguardHelpOverlay"

    const-string v3, "1st view show"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mChecked:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_4

    if-eqz v0, :cond_4

    const-string v1, "KeyguardHelpOverlay"

    const-string v3, "2nd view show"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v1, "KeyguardHelpOverlay"

    const-string v2, "3rd all view GONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->removeCallback()V

    goto :goto_1
.end method
