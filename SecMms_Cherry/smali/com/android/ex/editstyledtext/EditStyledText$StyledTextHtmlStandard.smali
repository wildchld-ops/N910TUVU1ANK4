.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextHtmlStandard"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method private constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V
    .locals 0
    .param p1    # Lcom/android/ex/editstyledtext/EditStyledText;
    .param p2    # Lcom/android/ex/editstyledtext/EditStyledText$1;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    return-void
.end method


# virtual methods
.method public fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/text/Html$ImageGetter;
    .param p3    # Landroid/text/Html$TagHandler;

    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/text/Spanned;

    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;Z)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/text/Spanned;
    .param p2    # Z

    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtml(Landroid/text/Spanned;ZIF)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/text/Spanned;
    .param p2    # Z
    .param p3    # I
    .param p4    # F

    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
