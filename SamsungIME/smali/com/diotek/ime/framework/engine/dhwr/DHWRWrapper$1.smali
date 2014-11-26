.class Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;
.super Ljava/lang/Thread;
.source "DHWRWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->loadHDICOnThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const-string v1, "hdic"

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyAssetDBFiletoSystem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$000(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    return-void
.end method
