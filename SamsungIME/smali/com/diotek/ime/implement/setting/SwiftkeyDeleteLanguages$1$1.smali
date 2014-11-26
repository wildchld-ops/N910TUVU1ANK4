.class Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1$1;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->show()V

    return-void
.end method
