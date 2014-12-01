.class Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;
.super Landroid/os/AsyncTask;
.source "TwitterAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/service/TwitterAuthenticator;->askOAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v4, "sExBYop0l1l0zIEzeoG5yg"

    const-string v5, "7esApxOGmsASVKF1ctOG76HfXs3DwzfXiOyL8GBzA"

    invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v2, v3}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$002(Lcom/touchtype/personalizer/service/TwitterAuthenticator;Loauth/signpost/OAuthConsumer;)Loauth/signpost/OAuthConsumer;

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v4, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$200(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$200(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$200(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;
    invoke-static {v2, v3}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$102(Lcom/touchtype/personalizer/service/TwitterAuthenticator;Loauth/signpost/OAuthProvider;)Loauth/signpost/OAuthProvider;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;
    invoke-static {v2}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$100(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Loauth/signpost/OAuthProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v3}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$000(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Loauth/signpost/OAuthConsumer;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$200(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator$1;->this$0:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    # getter for: Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mParent:Lcom/touchtype/personalizer/PersonalizerActivity;
    invoke-static {v0}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->access$300(Lcom/touchtype/personalizer/service/TwitterAuthenticator;)Lcom/touchtype/personalizer/PersonalizerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->loadWebView(Ljava/lang/String;)V

    return-void
.end method
