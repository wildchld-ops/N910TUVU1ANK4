.class Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectActionBarView:Landroid/view/View;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
