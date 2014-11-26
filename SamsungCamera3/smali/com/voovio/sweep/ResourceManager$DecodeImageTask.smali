.class Lcom/voovio/sweep/ResourceManager$DecodeImageTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voovio/sweep/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/voovio/sweep/Voovio;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private m_oVoovio:Lcom/voovio/sweep/Voovio;

.field final synthetic this$0:Lcom/voovio/sweep/ResourceManager;


# direct methods
.method private constructor <init>(Lcom/voovio/sweep/ResourceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->this$0:Lcom/voovio/sweep/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    return-void
.end method

.method synthetic constructor <init>(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;-><init>(Lcom/voovio/sweep/ResourceManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/voovio/sweep/Voovio;)Ljava/lang/Integer;
    .locals 5
    .param p1    # [Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    const/4 v3, 0x0

    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->this$0:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->this$0:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, v0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->this$0:Lcom/voovio/sweep/ResourceManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/voovio/sweep/ResourceManager;->access$0(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/voovio/sweep/Voovio;

    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->doInBackground([Lcom/voovio/sweep/Voovio;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
