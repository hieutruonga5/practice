<%@ include file="header.jsp" %>
             <div class="col-12 col-12 col-md-10" id = "searchTemp">
		        <form action="AddContent" method="post">
		            <div class="form-group">
		                <h2>Add Content </h2>
		            </div>
		            <div class="col-12">
		                <div class="form-group font-weight-bold">
		                    <label for="">Title</label>
		                    <input type="text" class="form-control" name="title" id="title" placeholder="Enter title">
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <div class="form-group font-weight-bold">
		                    <label for="">Brief</label>
		                    <textarea class="form-control" name="brief" ></textarea> 
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                
		                <div class="form-group font-weight-bold">
		                    <label for="">Content</label>
		                    <textarea class="form-control"  name="content" style="height: 100px;"></textarea> 
		                    <small id="errorFn" class="form-text text-muted alert-danger"></small>
		                </div>
		                <input id="signIn"   type="submit" value="Submit button">
		                <input id="signIn"  type="reset" value="Reset button">
		            </div>
		        </form>
			</div>
   <%@ include file="footer.jsp" %>