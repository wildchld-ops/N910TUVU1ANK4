.class Landroid/webkitsec/BrowserFrame$JSObject;
.super Ljava/lang/Object;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSObject"
.end annotation


# instance fields
.field object:Ljava/lang/Object;

.field requireAnnotation:Z

.field final synthetic this$0:Landroid/webkitsec/BrowserFrame;


# direct methods
.method public constructor <init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V
    .locals 0
    .param p2    # Ljava/lang/Object;
    .param p3    # Z

    iput-object p1, p0, Landroid/webkitsec/BrowserFrame$JSObject;->this$0:Landroid/webkitsec/BrowserFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iput-boolean p3, p0, Landroid/webkitsec/BrowserFrame$JSObject;->requireAnnotation:Z

    return-void
.end method
