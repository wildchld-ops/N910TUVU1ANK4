.class Lcom/android/settings/tts/TtsEnginePreference$5;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings/tts/TtsEnginePreference;->access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$300(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference$5;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # getter for: Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v4}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_2
    move v3, v7

    :cond_3
    return v3
.end method
