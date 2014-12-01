.class Lcom/android/mms/ui/SettingsReservationActivity$2;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SettingsReservationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SettingsReservationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$400(Lcom/android/mms/ui/SettingsReservationActivity;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->setResultData()V
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$500(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$2;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
