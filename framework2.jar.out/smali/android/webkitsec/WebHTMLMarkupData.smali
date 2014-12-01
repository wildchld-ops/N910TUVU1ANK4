.class public Landroid/webkitsec/WebHTMLMarkupData;
.super Ljava/lang/Object;
.source "WebHTMLMarkupData.java"


# instance fields
.field private mCharSet:Ljava/lang/String;

.field private mHTMLFragment:Ljava/lang/String;

.field private mPlainText:Ljava/lang/String;

.field private mSubPartList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/WebSubPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HTMLFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHTMLMarkupData;->mHTMLFragment:Ljava/lang/String;

    return-object v0
.end method

.method public charSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHTMLMarkupData;->mCharSet:Ljava/lang/String;

    return-object v0
.end method

.method public plainText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebHTMLMarkupData;->mPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebHTMLMarkupData;->mCharSet:Ljava/lang/String;

    return-void
.end method

.method public setHTMLFragment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebHTMLMarkupData;->mHTMLFragment:Ljava/lang/String;

    return-void
.end method

.method public setPlainText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebHTMLMarkupData;->mPlainText:Ljava/lang/String;

    return-void
.end method

.method public setSubPartList(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/WebSubPart;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/WebHTMLMarkupData;->mSubPartList:Ljava/util/Vector;

    return-void
.end method

.method public subPartList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/WebSubPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/WebHTMLMarkupData;->mSubPartList:Ljava/util/Vector;

    return-object v0
.end method
