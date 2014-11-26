.class public Lcom/android/keyguard/sec/SecContextualClockFlightMode;
.super Landroid/widget/LinearLayout;
.source "SecContextualClockFlightMode.java"


# instance fields
.field private mAmPmFlightKor:Landroid/widget/TextClock;

.field private mAmPmFlightOpen:Landroid/widget/TextClock;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTime:Landroid/widget/TextClock;

.field private mDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode$1;-><init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->handleUpdateClock()V

    return-void
.end method

.method private handleUpdateClock()V
    .locals 3

    const-string v1, "SecContextualClockFlightMode"

    const-string v2, "handleUpdateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 12

    const/16 v11, 0x12cb

    const/4 v10, -0x2

    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_show_info"

    invoke-static {v7, v8, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v3, v5

    :goto_0
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_date_and_year"

    invoke-static {v7, v8, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v1, v5

    :goto_1
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_show_clock"

    invoke-static {v7, v8, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_7

    move v2, v5

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mClockTime:Landroid/widget/TextClock;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mClockTime:Landroid/widget/TextClock;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    if-nez v2, :cond_a

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    move v3, v6

    goto :goto_0

    :cond_6
    move v1, v6

    goto :goto_1

    :cond_7
    move v2, v6

    goto :goto_2

    :cond_8
    const/4 v5, 0x4

    goto :goto_3

    :cond_9
    const/4 v5, 0x4

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    const-string v5, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mClockTime:Landroid/widget/TextClock;

    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightOpen:Landroid/widget/TextClock;

    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->mAmPmFlightKor:Landroid/widget/TextClock;

    return-void
.end method
