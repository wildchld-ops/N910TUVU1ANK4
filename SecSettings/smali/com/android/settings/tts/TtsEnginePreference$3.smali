.class Lcom/android/settings/tts/TtsEnginePreference$3;
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

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->val$rb:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    # invokes: Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v2, v3, v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    move v0, v1

    :cond_2
    return v0
.end method
