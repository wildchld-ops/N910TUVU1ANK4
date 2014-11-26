.class public final Lcom/voovio/sweep/TemplateGroup;
.super Ljava/lang/Object;
.source "TemplateGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/voovio/sweep/TemplateGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_aTemplatesH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Template;",
            ">;"
        }
    .end annotation
.end field

.field private m_aTemplatesV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Template;",
            ">;"
        }
    .end annotation
.end field

.field private m_strImageAspect:Ljava/lang/String;

.field private m_strName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voovio/sweep/TemplateGroup$1;

    invoke-direct {v0}, Lcom/voovio/sweep/TemplateGroup$1;-><init>()V

    sput-object v0, Lcom/voovio/sweep/TemplateGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    sget-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strImageAspect:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Lcom/voovio/sweep/TemplateGroup;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strName:Ljava/lang/String;

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    sget-object v1, Lcom/voovio/sweep/Template;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    sget-object v1, Lcom/voovio/sweep/Template;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/voovio/sweep/TemplateGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/TemplateGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method addTemplate(Lcom/voovio/sweep/Template;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Template;

    invoke-virtual {p1}, Lcom/voovio/sweep/Template;->getImageAspect()Ljava/lang/String;

    move-result-object v0

    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vertical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strImageAspect:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method getTemplate(I)Lcom/voovio/sweep/Template;
    .locals 8
    .param p1    # I

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/util/ArrayList;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    aput-object v6, v0, v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v7, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, v0, v2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Template;

    invoke-virtual {v4}, Lcom/voovio/sweep/Template;->getId()I

    move-result v5

    if-eq v5, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTemplateCount()I
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strImageAspect:Ljava/lang/String;

    sget-object v1, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTemplates()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Template;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strImageAspect:Ljava/lang/String;

    sget-object v1, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method setImageAspect(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/voovio/sweep/TemplateGroup;->m_strImageAspect:Ljava/lang/String;

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/voovio/sweep/TemplateGroup;->m_strName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/voovio/sweep/TemplateGroup;->m_aTemplatesV:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
