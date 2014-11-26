.class public Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$1;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;


# instance fields
.field private b:Lcom/touchtype_fluency/Term;

.field private c:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    return-void
.end method

.method constructor <init>(Lcom/touchtype_fluency/Term;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->b:Lcom/touchtype_fluency/Term;

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->c:Ljava/lang/Long;

    return-void
.end method

.method static a(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;)V
    .locals 0

    sput-object p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)I
    .locals 2

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$1;->a:[I

    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->b:Lcom/touchtype_fluency/Term;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->b:Lcom/touchtype_fluency/Term;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->c:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->c:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {p0, p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->compareTo(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {p1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->b:Lcom/touchtype_fluency/Term;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Term;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCount()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public getTerm()Lcom/touchtype_fluency/Term;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->b:Lcom/touchtype_fluency/Term;

    return-object v0
.end method
