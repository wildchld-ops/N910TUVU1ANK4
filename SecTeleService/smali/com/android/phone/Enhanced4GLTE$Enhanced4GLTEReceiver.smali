.class Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Enhanced4GLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enhanced4GLTEReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method private constructor <init>(Lcom/android/phone/Enhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Enhanced4GLTE;Lcom/android/phone/Enhanced4GLTE$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/Enhanced4GLTE;
    .param p2    # Lcom/android/phone/Enhanced4GLTE$1;

    invoke-direct {p0, p1}, Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;-><init>(Lcom/android/phone/Enhanced4GLTE;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enhanced4GLTE"

    const-string v2, "onReceive.. ACTION_ENABLE_UCE_TOGGLE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE$Enhanced4GLTEReceiver;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mUCEEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/Enhanced4GLTE;->access$500(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    sput-boolean v3, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    :cond_0
    return-void
.end method
