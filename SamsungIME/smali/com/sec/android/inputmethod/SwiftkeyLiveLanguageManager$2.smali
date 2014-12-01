.class final Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$2;
.super Ljava/lang/Object;
.source "SwiftkeyLiveLanguageManager.java"

# interfaces
.implements Lcom/touchtype_fluency/util/RefreshListener;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 2

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne p1, v0, :cond_1

    :cond_0
    # getter for: Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->access$500()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
