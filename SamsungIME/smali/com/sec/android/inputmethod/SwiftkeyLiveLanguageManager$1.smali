.class final Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$1;
.super Landroid/os/Handler;
.source "SwiftkeyLiveLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mIsEnableLiveLanguage:Z
    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$000()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->updateLiveLanguagePack(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$200(Landroid/content/Context;)Z

    :cond_0
    # setter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->sContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$002(Landroid/content/Context;)Landroid/content/Context;

    goto :goto_0

    :pswitch_1
    # invokes: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$300(Landroid/content/Context;)V

    const/4 v0, 0x0

    # setter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mNeedToUpdateLanguageList:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$402(Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
