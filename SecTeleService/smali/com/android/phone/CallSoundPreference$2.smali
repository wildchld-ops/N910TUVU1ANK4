.class Lcom/android/phone/CallSoundPreference$2;
.super Ljava/lang/Object;
.source "CallSoundPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallSoundPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallSoundPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallSoundPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallSoundPreference$2;->this$0:Lcom/android/phone/CallSoundPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference$2;->this$0:Lcom/android/phone/CallSoundPreference;

    # getter for: Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/CallSoundPreference;->access$000(Lcom/android/phone/CallSoundPreference;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallSoundPreference$2;->this$0:Lcom/android/phone/CallSoundPreference;

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference$2;->this$0:Lcom/android/phone/CallSoundPreference;

    # getter for: Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/CallSoundPreference;->access$000(Lcom/android/phone/CallSoundPreference;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/phone/CallSoundPreference;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/CallSoundPreference;->access$100(Lcom/android/phone/CallSoundPreference;ILandroid/preference/Preference;I)V

    :cond_0
    return-void
.end method
