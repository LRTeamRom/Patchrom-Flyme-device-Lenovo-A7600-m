.class public Landroid/widget/TextView$TextFontListener;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation build Landroid/annotation/VibeHook;
    module = .enum Landroid/annotation/VibeHook$VibeHookModule;->FONT:Landroid/annotation/VibeHook$VibeHookModule;
    note = "Lenovo-sw FONT wangcy9 PATCHROM-126 add 20140715, for font"
    type = .enum Landroid/annotation/VibeHook$VibeHookType;->NEW_METHOD:Landroid/annotation/VibeHook$VibeHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFontListener"
.end annotation


# instance fields
.field public hasRegister:Z

.field public mstyle:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10158
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10155
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 10156
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 10159
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 1
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "nstyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 10161
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10155
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 10156
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 10162
    iput p3, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 10163
    return-void
.end method
