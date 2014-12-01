.class public Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;
.super Landroid/os/AsyncTask;
.source "SIPResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/SIPResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation


# instance fields
.field m_Hangle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->m_Hangle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->m_Hangle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/databases/SIPResolver;->SearchHanjaDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
