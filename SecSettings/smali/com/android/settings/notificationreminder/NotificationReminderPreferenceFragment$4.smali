.class Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$4;
.super Ljava/lang/Object;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$4;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$4;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$200(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
