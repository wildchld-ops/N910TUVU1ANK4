.class Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;
.super Ljava/lang/Object;
.source "FacebookPersonalizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/service/FacebookPersonalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/service/FacebookPersonalizer;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-static {p2}, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    move-result-object v1

    # setter for: Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->access$002(Lcom/touchtype/personalizer/service/FacebookPersonalizer;Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;)Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->getAccessTokenNExpires()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    invoke-virtual {v0, v2, v2}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->startPersonalization(ZZ)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/touchtype/personalizer/service/FacebookPersonalizer$1;->this$0:Lcom/touchtype/personalizer/service/FacebookPersonalizer;

    const/4 v1, 0x0

    # setter for: Lcom/touchtype/personalizer/service/FacebookPersonalizer;->mSnsFacebookForAuthToken:Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/service/FacebookPersonalizer;->access$002(Lcom/touchtype/personalizer/service/FacebookPersonalizer;Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;)Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    return-void
.end method
