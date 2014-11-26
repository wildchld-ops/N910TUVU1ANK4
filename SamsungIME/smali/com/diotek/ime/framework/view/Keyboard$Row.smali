.class public Lcom/diotek/ime/framework/view/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lcom/diotek/ime/framework/view/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/diotek/ime/framework/view/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3    # Landroid/content/res/XmlResourceParser;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->parent:Lcom/diotek/ime/framework/view/Keyboard;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$000(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v1

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$100(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultWidth:I

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$200(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v1

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$300(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v2

    invoke-static {v0, v5, v1, v2}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultHeight:I

    const/4 v1, 0x2

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$000(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v2

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$400(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v1, 0x3

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$200(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v2

    # getter for: Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I
    invoke-static {p2}, Lcom/diotek/ime/framework/view/Keyboard;->access$500(Lcom/diotek/ime/framework/view/Keyboard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->verticalGap:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->mode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->parent:Lcom/diotek/ime/framework/view/Keyboard;

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/Keyboard$Row;)Lcom/diotek/ime/framework/view/Keyboard;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/Keyboard$Row;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard$Row;->parent:Lcom/diotek/ime/framework/view/Keyboard;

    return-object v0
.end method
