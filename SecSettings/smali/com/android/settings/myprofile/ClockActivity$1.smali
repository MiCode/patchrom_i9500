.class Lcom/android/settings_ex/myprofile/ClockActivity$1;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myprofile/ClockActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$1;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$1;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$100(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$1;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$000(Lcom/android/settings_ex/myprofile/ClockActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$1;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$1;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$000(Lcom/android/settings_ex/myprofile/ClockActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextSizeToDB(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$200(Lcom/android/settings_ex/myprofile/ClockActivity;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
