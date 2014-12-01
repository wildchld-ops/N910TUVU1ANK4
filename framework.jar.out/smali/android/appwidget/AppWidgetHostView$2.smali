.class Landroid/appwidget/AppWidgetHostView$2;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$2;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPress(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x5672

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method
