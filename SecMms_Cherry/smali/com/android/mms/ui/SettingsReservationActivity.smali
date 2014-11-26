.class public Lcom/android/mms/ui/SettingsReservationActivity;
.super Landroid/app/Activity;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SettingsReservationActivity$settingStateReserver;
    }
.end annotation


# static fields
.field private static final MAX_YEAR:I = 0x7f5

.field private static final MENU_CHECK:I = 0x1

.field private static final MENU_EXIT:I = 0x2

.field public static final REQUEST_SETTINGS_TRANSMIT_RESERVATION_TIME:I = 0x64

.field public static final RESERVATION_OK:I = 0x0

.field public static final SETTINGS_RESERVATION_TIME:Ljava/lang/String; = "RESERVATION_TIME"

.field private static final TAG:Ljava/lang/String; = "Mms/SettingsReservationActivity"

.field public static mCalendar:Ljava/util/Calendar;


# instance fields
.field bOriginalCheckState:Z

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateView:Landroid/widget/Button;

.field private mDay:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mHour:I

.field private mHourofDay:I

.field private mInfoView:Landroid/widget/TextView;

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/widget/Button;

.field private mMenuDone:Landroid/widget/Button;

.field private mMin:I

.field private mMinDay:I

.field private mMinMonth:I

.field private mMinYear:I

.field private mMonth:I

.field private mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSendTimeBakup:J

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTimeView:Landroid/widget/Button;

.field private mYear:I

.field timeSettingChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/widget/Button;

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->bOriginalCheckState:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->timeSettingChanged:Z

    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$3;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/android/mms/ui/SettingsReservationActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SettingsReservationActivity$4;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SettingsReservationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshMinValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SettingsReservationActivity;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget-wide v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SettingsReservationActivity;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mSendTimeBakup:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setCancelResultDate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SettingsReservationActivity;J)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResultData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SettingsReservationActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SettingsReservationActivity;J)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/SettingsReservationActivity;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    return-void
.end method

.method public static checkReservationTime(J)I
    .locals 6
    .param p0    # J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const v2, 0x7f0c02e7

    :goto_0
    return v2

    :cond_0
    sub-long v2, p0, v0

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const v2, 0x7f0c02e8

    goto :goto_0

    :cond_1
    sub-long v2, p0, v0

    const-wide v4, 0x757b12c00L

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const v2, 0x7f0c02e9

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v2, "Mms/SettingsReservationActivity"

    const-string v3, "initialize CaLl: "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0b0357

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mInfoView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v2, 0x7f0b0151

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setHoverPopupType(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESERVATION_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshMinValue()V

    return-void
.end method

.method private isEnableReservationTime(J)Z
    .locals 7
    .param p1    # J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Mms/SettingsReservationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnableReservationTime CaLl: milliSec = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/mms/ui/SettingsReservationActivity;->checkReservationTime(J)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c02e8

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v2, 0x7f0c00ee

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private refreshMinValue()V
    .locals 7

    const-wide/16 v5, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    div-long v3, v1, v5

    mul-long v1, v3, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    const/16 v4, 0x7f5

    if-lt v3, v4, :cond_0

    const/16 v3, 0x7f4

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    const/16 v3, 0xb

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    const/16 v3, 0x1f

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    goto :goto_0
.end method

.method private refreshReservationTime(J)V
    .locals 12
    .param p1    # J

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v3, 0xc

    const-string v2, "Mms/SettingsReservationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshReservationTime CaLl: reservationTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateFormat:Ljava/text/DateFormat;

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    mul-long p1, v4, v6

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v3, "%02d : %02d"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v5, "%s %2d : %02d"

    new-array v6, v11, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c02ef

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v6, v10

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c02f0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s %2d : %02d"

    new-array v6, v11, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c02ef

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v6, v10

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v2, :cond_6

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c02f0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    const-string v5, "%2d : %02d %s"

    new-array v6, v11, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    if-nez v2, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    if-ge v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHour:I

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method private setCancelResultDate()V
    .locals 4

    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESERVATION_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setResultData()V
    .locals 4

    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "setResultData CaLl: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESERVATION_TIME"

    sget-object v2, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public OnClickReservationOnOff(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, -0x1

    const v3, -0x777778

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mReservationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const-string v0, "Mms/SettingsReservationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick CaLl: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateView:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    const/16 v1, 0x7f5

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7f4

    const/16 v4, 0xb

    const/16 v5, 0x1f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    :goto_1
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    const/16 v1, 0x7f5

    if-lt v0, v1, :cond_3

    const/16 v0, 0x1f

    const/16 v1, 0xb

    const/16 v2, 0x7f4

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    check-cast v6, Landroid/app/DatePickerDialog;

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    const/16 v0, 0x1f

    const/16 v1, 0xb

    const/16 v2, 0x7f4

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mYear:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMonth:I

    iget v5, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinDay:I

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinMonth:I

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMinYear:I

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeView:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I

    iget v4, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "Mms/SettingsReservationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate CaLl: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f04009e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->initialize()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v2, 0x7f040044

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuCancel:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/SettingsReservationActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SettingsReservationActivity$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mMenuDone:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/SettingsReservationActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SettingsReservationActivity$2;-><init>(Lcom/android/mms/ui/SettingsReservationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SettingsReservationActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setResultData()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v1, "Mms/SettingsReservationActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->setCancelResultDate()V

    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SettingsReservationActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V

    return-void
.end method
