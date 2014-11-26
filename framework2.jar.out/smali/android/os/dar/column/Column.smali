.class public Landroid/os/dar/column/Column;
.super Ljava/lang/Object;
.source "Column.java"


# static fields
.field public static ATTR_SENSITIVE:I


# instance fields
.field attr:I

.field name:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/dar/column/Column;->uri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/os/dar/column/Column;->name:Ljava/lang/String;

    iput p3, p0, Landroid/os/dar/column/Column;->attr:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/dar/column/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/os/dar/column/Column;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSensitive()Z
    .locals 2

    iget v0, p0, Landroid/os/dar/column/Column;->attr:I

    sget v1, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I

    and-int/2addr v0, v1

    sget v1, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column >  uri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/dar/column/Column;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attr-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/dar/column/Column;->attr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
