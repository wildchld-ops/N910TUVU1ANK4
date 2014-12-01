.class Lcom/diotek/ime/framework/view/AbstractViewController$1;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractViewController;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$1;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController$1;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    return-void
.end method
