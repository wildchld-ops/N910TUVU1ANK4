.class Lcom/android/mms/ui/SettingsReservationActivity$3;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SettingsReservationActivity;
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

    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$3;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1    # Landroid/widget/TimePicker;
    .param p2    # I
    .param p3    # I

    move v0, p2

    move v1, p3

    iget-object v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$3;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    new-instance v3, Lcom/android/mms/ui/SettingsReservationActivity$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity$3$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity$3;II)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
