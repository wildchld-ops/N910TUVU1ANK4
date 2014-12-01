.class Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleFeaturePreferenceFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    const-string v0, "ToggleFeaturePreferenceFragment"

    const-string v1, "mTts initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
