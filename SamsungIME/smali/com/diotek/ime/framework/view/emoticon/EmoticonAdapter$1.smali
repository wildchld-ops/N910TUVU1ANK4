.class Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;
.super Ljava/lang/Object;
.source "EmoticonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;->this$0:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;->this$0:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    # getter for: Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    invoke-static {v1}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->access$000(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;->onEmoticonClickListener(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
