.class public Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.super Landroid/app/Dialog;
.source "DateTimeIntentReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/DateTimeIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p2    # Landroid/content/Context;
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;-><init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x200

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFlags(II)V

    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v6, -0x5

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setCanceledOnTouchOutside(Z)V

    const v6, 0x7f040077

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setContentView(I)V

    invoke-virtual {p0, p3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x7f0b0175

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0167

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b016c

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$202(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v6, 0x7f0b016a

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0170

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$402(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v6, 0x7f0b016d

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0174

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$602(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v6, 0x7f0b0171

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    const v6, 0x7f0b0168

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f0b0169

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f0b0173

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f0901d1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->is24Hour()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->registerTimeBroadcast()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v6, -0x23

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "there is no AUTO_TIME_ZONE value on settinbs db so remove automatic timezone layout"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0b016d

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formatOffset(I)[C
    .locals 6
    .param p1    # I

    const/4 v5, 0x3

    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    const/16 v3, 0x9

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    if-gez p1, :cond_0

    const/16 v3, 0x2d

    aput-char v3, v0, v5

    neg-int p1, p1

    :goto_0
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v2, p1, 0x3c

    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    return-object v0

    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerTimeBroadcast()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z
    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss : mIntentReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v5, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/settings/DateTimeIntentReceiver;->access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_2
    return-object p1

    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/util/TimeZone;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_1

    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "close button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_2

    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "manual setup button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.settings.DATE_SETTINGS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "exception on doing dismissKeyguardOnNextActivity()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    :goto_2
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoDateTime is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    move v1, v7

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    move v1, v6

    :goto_4
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoTimezone is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_7

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v1, v7

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_9

    move v0, v6

    :goto_6
    const-string v6, "DateTimeIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "24 hour format is clicked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->set24Hour(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    move v0, v7

    goto :goto_6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z
    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901e6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay(), date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timezone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901e5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "tablet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    # getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
