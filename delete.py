import cloudinary
import cloudinary.api

cloudinary.config(
    cloud_name="dcglxonte",
    api_key="525857237342112",
    api_secret="U6EZCjI7EV7-VPJeTomxFsdRuZ8",
    secure=True,
)

def delete_all_files():
    try:
        # Get a list of all resources (files) in your Cloudinary account
        resources = cloudinary.api.resources(max_results=500)

        # Extract public IDs of the resources
        public_ids = [resource['public_id'] for resource in resources['resources']]

        while public_ids:
            # Delete resources in batches of 100 (Cloudinary API limit per request)
            cloudinary.api.delete_resources(public_ids[:100])
            public_ids = public_ids[100:]

        print("All files deleted successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

delete_all_files()
