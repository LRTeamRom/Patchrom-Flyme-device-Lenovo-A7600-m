.class public final Lcom/mediatek/telecom/ConferenceXmlData;
.super Ljava/lang/Object;
.source "ConferenceXmlData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telecom/ConferenceXmlData$User;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/telecom/ConferenceXmlData;",
            ">;"
        }
    .end annotation
.end field

.field private static final Log_TAG:Ljava/lang/String; = "ConferenceXmlData"


# instance fields
.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telecom/ConferenceXmlData$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/mediatek/telecom/ConferenceXmlData$1;

    invoke-direct {v0}, Lcom/mediatek/telecom/ConferenceXmlData$1;-><init>()V

    sput-object v0, Lcom/mediatek/telecom/ConferenceXmlData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telecom/ConferenceXmlData$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telecom/ConferenceXmlData$User;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-ne p0, p1, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/mediatek/telecom/ConferenceXmlData;

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/mediatek/telecom/ConferenceXmlData;

    .line 77
    .local v0, "xmlData":Lcom/mediatek/telecom/ConferenceXmlData;
    invoke-virtual {p0}, Lcom/mediatek/telecom/ConferenceXmlData;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/telecom/ConferenceXmlData;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telecom/ConferenceXmlData$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mediatek/telecom/ConferenceXmlData;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 54
    .local v2, "size":I
    iget-object v4, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 57
    :cond_0
    const-string/jumbo v4, "size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v4, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telecom/ConferenceXmlData$User;

    .line 59
    .local v3, "user":Lcom/mediatek/telecom/ConferenceXmlData$User;
    const-string v4, "User: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mediatek/telecom/ConferenceXmlData$User;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 61
    .end local v3    # "user":Lcom/mediatek/telecom/ConferenceXmlData$User;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData;->mUsers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 39
    return-void
.end method
