.class Lcom/android/settings/search/SearchMain$UpdateListThread;
.super Ljava/lang/Thread;
.source "SearchMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateListThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchMain;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SearchMain$UpdateListThread;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/SearchMain$UpdateListThread;->this$0:Lcom/android/settings/search/SearchMain;

    new-instance v1, Lcom/android/settings/search/SearchMain$UpdateListThread$1;

    invoke-direct {v1, p0}, Lcom/android/settings/search/SearchMain$UpdateListThread$1;-><init>(Lcom/android/settings/search/SearchMain$UpdateListThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
