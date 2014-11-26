.class public Lcom/android/mms/ui/SettingsTransmitMessageActivity;
.super Landroid/app/Activity;
.source "SettingsTransmitMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CHECK:I = 0x1

.field private static final MENU_EXIT:I = 0x2

.field public static final REQUEST_SETTINGS_TRANSMIT_RESERVATION_TIME:I = 0x64

.field public static final SETTINGS_DELIVERY_REPORT:Ljava/lang/String; = "DELIVERY_REPORT"

.field public static final SETTINGS_READ_REPORT:Ljava/lang/String; = "READ_REPORT"

.field public static final SETTINGS_RESERVATION_TIME:Ljava/lang/String; = "RESERVATION_TIME"

.field private static final TAG:Ljava/lang/String; = "SettingTransmitMessageActivity"


# instance fields
.field mCheckBoxOrString:Z

.field private mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

.field public mDeliveryReport:Z

.field private mDeliveryReportView:Landroid/widget/CheckBox;

.field private mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field public mReadReport:Z

.field private mReadReportView:Landroid/widget/CheckBox;

.field private mReadReportViewSentence:Landroid/widget/LinearLayout;

.field public mReservationTime:J

.field private mReservationView:Landroid/widget/CheckBox;

.field private mReservationViewSentence:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    iput-object v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    return-void
.end method

.method private initialize()V
    .locals 4

    const v0, 0x7f0b0358

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b035b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b035e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0360

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0359

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b035c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0361

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setViewStatusFromItent(Landroid/content/Intent;)V

    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedRequestDeliveryReadReportInfo(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1    # Landroid/widget/LinearLayout;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ee

    new-instance v2, Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;-><init>(Lcom/android/mms/ui/SettingsTransmitMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V
    .locals 2
    .param p1    # Landroid/widget/CheckBox;

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V
    .locals 2
    .param p1    # Landroid/widget/CheckBox;

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private onClickedReservation(Landroid/widget/CheckBox;)V
    .locals 5
    .param p1    # Landroid/widget/CheckBox;

    const/16 v4, 0x64

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->releaseCheck(Landroid/widget/CheckBox;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setResultData()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    :cond_0
    const-string v1, "RESERVATION_TIME"

    iget-wide v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "DELIVERY_REPORT"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "READ_REPORT"

    iget-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    goto :goto_1
.end method

.method private setViewStatusFromItent(Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Intent;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "RESERVATION_TIME"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    const-string v0, "DELIVERY_REPORT"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    const-string v0, "READ_REPORT"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReport:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string v0, "RESERVATION_TIME"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    iget-wide v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationTime:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedReservation(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mCheckBoxOrString:Z

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReportView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReceivedConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReadReportView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestReadreportConfirm(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mReservationView:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedReservation(Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mDeliveryReadReportInfoViewSentence:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestDeliveryReadReportInfo(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04009f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->initialize()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x2

    const/4 v2, 0x0

    const v0, 0x7f0c0183

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x1

    const v1, 0x7f0c004d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0202d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0202d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setResultData()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SettingsTransmitMessageActivity;->setResultData()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method releaseCheck(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1    # Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
