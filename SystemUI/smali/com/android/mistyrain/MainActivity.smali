.class public Lcom/android/mistyrain/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# instance fields
.field iv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/android/mistyrain/MainActivity;->setContentView(I)V

    .line 30
    const v1, 0x7f05003c

    invoke-virtual {p0, v1}, Lcom/android/mistyrain/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, "t":Landroid/widget/Button;
    new-instance v1, Lcom/android/mistyrain/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mistyrain/MainActivity$1;-><init>(Lcom/android/mistyrain/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
