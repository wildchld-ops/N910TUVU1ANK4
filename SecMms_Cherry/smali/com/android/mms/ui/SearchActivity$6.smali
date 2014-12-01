.class Lcom/android/mms/ui/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 4

    const-string v0, "Mms/SearchActivity"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SearchActivity$6$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SearchActivity$6$1;-><init>(Lcom/android/mms/ui/SearchActivity$6;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0

    return-void
.end method
