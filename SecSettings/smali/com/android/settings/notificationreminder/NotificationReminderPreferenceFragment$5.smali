.class Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;
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

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheckLED:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->val$mcheckLED:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SHOW_LED_DIALOG"

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->val$mcheckLED:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$300(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$400(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_missed_event"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$500(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_voice_recording"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$600(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_low_battery"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$700(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_indicator_charing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
