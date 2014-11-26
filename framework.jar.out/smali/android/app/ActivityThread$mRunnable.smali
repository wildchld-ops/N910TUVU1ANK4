.class Landroid/app/ActivityThread$mRunnable;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mRunnable"
.end annotation


# instance fields
.field actname:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field filename:Ljava/io/File;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/io/File;

    iput-object p1, p0, Landroid/app/ActivityThread$mRunnable;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/ActivityThread$mRunnable;->actname:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ActivityThread$mRunnable;->filename:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$mRunnable;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/ActivityThread$mRunnable;->actname:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ActivityThread$mRunnable;->filename:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->startRC(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method
