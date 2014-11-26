.class Lcom/android/launcher2/SurfaceWidgetItem$1;
.super Ljava/lang/Object;
.source "SurfaceWidgetItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SurfaceWidgetItem;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetItem$1;->this$0:Lcom/android/launcher2/SurfaceWidgetItem;

    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetItem$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    return-void
.end method
