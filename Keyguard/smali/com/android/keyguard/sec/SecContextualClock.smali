.class public Lcom/android/keyguard/sec/SecContextualClock;
.super Landroid/widget/LinearLayout;
.source "SecContextualClock.java"


# instance fields
.field private mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClock$2;-><init>(Lcom/android/keyguard/sec/SecContextualClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClock$1;-><init>(Lcom/android/keyguard/sec/SecContextualClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClock;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecContextualClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClock;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecContextualClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClock;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .locals 3

    const-string v1, "SecContextualClock"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 14

    const/16 v13, 0x12cb

    const/16 v12, 0x8

    const/4 v11, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string v9, "SecContextualClock"

    const-string v10, "onAttachedToWindow()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v6, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "easy_mode_switch"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_b

    move v2, v7

    :goto_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_mode"

    invoke-static {v9, v10, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_c

    move v3, v8

    :goto_1
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_show_info"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_d

    move v5, v8

    :goto_2
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_date_and_year"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_e

    move v1, v8

    :goto_3
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_clock"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_f

    move v4, v8

    :goto_4
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    if-eqz v4, :cond_10

    if-eqz v1, :cond_10

    move v9, v7

    :goto_5
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    move v9, v7

    :goto_6
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_3

    if-eqz v5, :cond_2

    if-nez v4, :cond_12

    :cond_2
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_7
    if-nez v2, :cond_4

    if-eqz v3, :cond_14

    :cond_4
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0099

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c009a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    :goto_8
    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_b
    move v2, v8

    goto/16 :goto_0

    :cond_c
    move v3, v7

    goto/16 :goto_1

    :cond_d
    move v5, v7

    goto/16 :goto_2

    :cond_e
    move v1, v7

    goto/16 :goto_3

    :cond_f
    move v4, v7

    goto/16 :goto_4

    :cond_10
    const/4 v9, 0x4

    goto/16 :goto_5

    :cond_11
    const/4 v9, 0x4

    goto/16 :goto_6

    :cond_12
    if-eqz v6, :cond_13

    const-string v9, "ko"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0095

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_15
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0097

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_16
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_17
    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_8
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const-string v0, "SecContextualClock"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mClockTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0129

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock;->mAmPmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    return-void
.end method
