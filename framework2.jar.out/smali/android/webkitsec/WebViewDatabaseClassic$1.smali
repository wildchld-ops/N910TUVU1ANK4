.class Landroid/webkitsec/WebViewDatabaseClassic$1;
.super Ljava/lang/Thread;
.source "WebViewDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewDatabaseClassic;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewDatabaseClassic;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewDatabaseClassic;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewDatabaseClassic$1;->this$0:Landroid/webkitsec/WebViewDatabaseClassic;

    iput-object p2, p0, Landroid/webkitsec/WebViewDatabaseClassic$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewDatabaseClassic$1;->this$0:Landroid/webkitsec/WebViewDatabaseClassic;

    iget-object v1, p0, Landroid/webkitsec/WebViewDatabaseClassic$1;->val$context:Landroid/content/Context;

    # invokes: Landroid/webkitsec/WebViewDatabaseClassic;->init(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewDatabaseClassic;->access$000(Landroid/webkitsec/WebViewDatabaseClassic;Landroid/content/Context;)V

    return-void
.end method
