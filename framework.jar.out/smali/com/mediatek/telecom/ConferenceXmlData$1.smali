.class final Lcom/mediatek/telecom/ConferenceXmlData$1;
.super Ljava/lang/Object;
.source "ConferenceXmlData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/ConferenceXmlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/telecom/ConferenceXmlData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/telecom/ConferenceXmlData;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    const-class v2, Lcom/mediatek/telecom/ConferenceXmlData$User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 26
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telecom/ConferenceXmlData$User;>;"
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 28
    new-instance v2, Lcom/mediatek/telecom/ConferenceXmlData;

    invoke-direct {v2, v1}, Lcom/mediatek/telecom/ConferenceXmlData;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/mediatek/telecom/ConferenceXmlData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/telecom/ConferenceXmlData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/telecom/ConferenceXmlData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    new-array v0, p1, [Lcom/mediatek/telecom/ConferenceXmlData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/mediatek/telecom/ConferenceXmlData$1;->newArray(I)[Lcom/mediatek/telecom/ConferenceXmlData;

    move-result-object v0

    return-object v0
.end method
