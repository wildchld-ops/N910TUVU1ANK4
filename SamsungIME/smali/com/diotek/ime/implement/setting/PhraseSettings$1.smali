.class Lcom/diotek/ime/implement/setting/PhraseSettings$1;
.super Ljava/lang/Object;
.source "PhraseSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/PhraseSettings;->setPhraseListItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/PhraseSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings$1;->this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/PhraseSettings$1;->this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;

    # getter for: Lcom/diotek/ime/implement/setting/PhraseSettings;->phraseList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/PhraseSettings;->access$000(Lcom/diotek/ime/implement/setting/PhraseSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseEditText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
