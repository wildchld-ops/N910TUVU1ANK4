.class Landroid/webkitsec/HtmlComposerView$MenuHandler;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$MenuHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$MenuHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    return v1
.end method
