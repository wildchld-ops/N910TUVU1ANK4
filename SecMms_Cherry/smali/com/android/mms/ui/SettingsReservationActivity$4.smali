.class Lcom/android/mms/ui/SettingsReservationActivity$4;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    move v2, p2

    move v1, p3

    move v0, p4

    iget-object v3, p0, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    new-instance v4, Lcom/android/mms/ui/SettingsReservationActivity$4$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/mms/ui/SettingsReservationActivity$4$1;-><init>(Lcom/android/mms/ui/SettingsReservationActivity$4;III)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
