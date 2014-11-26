.class Lcom/android/mms/ui/SearchActivity$6$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$6;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$6$1;->this$1:Lcom/android/mms/ui/SearchActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$6$1;->this$1:Lcom/android/mms/ui/SearchActivity$6;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6$1;->this$1:Lcom/android/mms/ui/SearchActivity$6;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    # getter for: Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SearchActivity;->access$900(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchActivity;->access$1000(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V

    return-void
.end method
